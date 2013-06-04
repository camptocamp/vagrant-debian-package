require "vagrant"

module VagrantPlugins
  module GuestSolaris
    # A general Vagrant system implementation for "solaris".
    #
    # Contributed by Blake Irvin <b.irvin@modcloth.com>
    class Guest < Vagrant.plugin("2", :guest)
      def detect?(machine)
        machine.communicate.test("uname -o | grep Solaris")
      end
    end
  end
end
