gephi
Linux

    Update your distribution with the last official JRE 7 ir 8 packages.
    After the download completes, unzip and untar the file in a directory.
    Run it by executing ./bin/gephi script file.

Troubleshooting
Java 7 standard edition or newer required

Check you have Java properly installed on your system. If you're on Linux, you may provide the path to the jdk with ./bin/gephi --jdkhome $JAVA_HOME


JVM Creation failed

This error message is due to memory settings, see following section.
Memory

Memory available to Gephi is determined by Java. Less or more memory can be allocated by configuring Gephi’s startup settings. If too less memory is allocated, Gephi will stop running when it reached the limit and you will loose your current work. If more memory than what the system is equipped with is set, Java will not be able to start and return “JVM Creation failed” message. By default, maximum memory is set to 512mo.

To modify memory settings, you need to edit gephi settings file. Modify the value after the -Xmx option to change the maximum heap space. For example, to use a heap size between 256 and 1024 MB, change the options to -Xms256m and -Xmx1024m. If you have Gephi open, you must close and reopen Gephi before new options take effect. On computers with 2GB of memory, you can set -Xmx1400 to get maximum performance.

How to edit gephi.conf:
    On Linux, go into your application directory and then into the etc folder. Edit the file with a text editor.

When multiple JRE or JDK are installed on the same machine, you can specifty to Gephi to use a particular path. Edit gephi.conf as  described in the upper section, uncomment the jdkhome line and set the JRE or JDK path.
User files

Locate and delete gephi user directory to clean your installation.

    On Linux, user diretory is located in
    /home/username/.gephi

#Gephi plugins
https://marketplace.gephi.org/plugin/give-color-to-nodes/
https://marketplace.gephi.org/plugin/recast-column/
https://marketplace.gephi.org/plugin/semanticwebimport/
https://marketplace.gephi.org/plugin/graph-streaming/
https://marketplace.gephi.org/plugin/excel-csv-converter-to-network/
https://marketplace.gephi.org/plugin/export-to-shp/
https://marketplace.gephi.org/plugin/give-color-to-edges/
https://marketplace.gephi.org/plugin/scripting-plugin/
https://marketplace.gephi.org/plugin/multimode-networks-transformations-2/
https://marketplace.gephi.org/plugin_categories/plugin-generator/
https://marketplace.gephi.org/plugin/kbrace-filter/
https://marketplace.gephi.org/plugin/exporttoearth/
https://marketplace.gephi.org/plugin/maps-of-countries/
https://marketplace.gephi.org/plugin/isometriclayout/
https://marketplace.gephi.org/plugin/network-splitter-3d/
https://marketplace.gephi.org/plugin/noverlap/
https://marketplace.gephi.org/plugin/geolayout/
https://marketplace.gephi.org/plugin/layered-layout/
https://marketplace.gephi.org/plugin/openord-layout/
https://marketplace.gephi.org/plugin/gexf-js-web-viewer/
https://marketplace.gephi.org/plugin/sigmajs-exporter/
https://marketplace.gephi.org/plugin/json-exporter/
https://marketplace.gephi.org/plugin/lineage/
https://marketplace.gephi.org/plugin/link-communities/
https://marketplace.gephi.org/plugin/social-network-analysis/
https://marketplace.gephi.org/plugin/neo4j-graph-database-support/
https://marketplace.gephi.org/plugin/image-preview/
https://marketplace.gephi.org/plugin/multi-colour-renderer/
https://marketplace.gephi.org/plugin/girvan-newman-clustering/
https://marketplace.gephi.org/plugin/gc-viz/
https://marketplace.gephi.org/plugin/chinese-whispers-clustering/
