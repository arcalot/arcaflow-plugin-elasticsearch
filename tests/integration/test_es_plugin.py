#!/usr/bin/env python3

import os
import unittest
import es_plugin
from arcaflow_plugin_sdk import plugin


class StoreIntegrationTest(unittest.TestCase):

    def setUp(self) -> None:
        super().setUp()

        if os.environ.get("ELASTICSEARCH_URL") == "":
            os.environ["ELASTICSEARCH_URL"] = "http://localhost:9200"
        if os.environ.get("ELASTICSEARCH_USERNAME") == "":
            os.environ["ELASTICSEARCH_USERNAME"] = "elastic"
        if os.environ.get("ELASTICSEARCH_PASSWORD") == "":
            os.environ["ELASTICSEARCH_PASSWORD"] = "topsecret"
    
    def test_empty_data(self) -> None:
        exitcode = plugin.run(
            s=plugin.build_schema(es_plugin.store), 
            argv=["", "-f", StoreIntegrationTest.build_fixture_file_path("empty_data.yaml")],
        )
        
        self.assertEqual(exitcode, 0)
    
    def test_simple_data(self) -> None:
        exitcode = plugin.run(
            s=plugin.build_schema(es_plugin.store), 
            argv=["", "-f", StoreIntegrationTest.build_fixture_file_path("simple_data.yaml")],
        )
        
        self.assertEqual(exitcode, 0)

    @staticmethod
    def build_fixture_file_path(fixtureFile: str) -> str:
        currDir = os.path.dirname(os.path.realpath(__file__))
        return os.path.join(currDir, "fixtures", fixtureFile)

if __name__ == '__main__':
    unittest.main()
