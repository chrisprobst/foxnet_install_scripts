# Removing old distribution
echo "Removing old distribution"
bash remove_scala_links.sh
echo "Done"

# Load scala and unpack
echo "Loading scala distribution..."
wget http://www.scala-lang.org/downloads/distrib/files/scala-2.10.1.tgz \
	&& tar -xzf scala-2.10.1.tgz
echo "Done"

# Move scala and delete archive
echo "Moving scala distribution..."
sudo mv scala-2.10.1 /usr/share/scala

# Remove old scala package
rm -r scala-2.10.1.tgz
echo "Done"

echo "Adding symbolic scala links"
sudo ln -s /usr/share/scala/bin/scala /usr/bin/scala
sudo ln -s /usr/share/scala/bin/scalac /usr/bin/scalac
sudo ln -s /usr/share/scala/bin/fsc /usr/bin/fsc
sudo ln -s /usr/share/scala/bin/sbaz /usr/bin/sbaz
sudo ln -s /usr/share/scala/bin/sbaz-setup /usr/bin/sbaz-setup
sudo ln -s /usr/share/scala/bin/scaladoc /usr/bin/scaladoc
sudo ln -s /usr/share/scala/bin/scalap /usr/bin/scalap
echo "Done"
