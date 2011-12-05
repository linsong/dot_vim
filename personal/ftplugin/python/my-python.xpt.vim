XPTemplate priority=personal+

" inclusion
XPTinclude
      \ _common/common

XPTemplateDef

XPT d
import pdb, readline; pdb.set_trace();

XPT rpdb
import rpdb2; rpdb2.start_embedded_debugger('hello')

XPT log
import logging;
logging.critical(${1})

XPT manhole
# set up  manhole service for debug purpose
# !!! ATTENTION: NEVER USE IT ON LIVESITE !!!
from twisted.internet import reactor
from twisted.manhole import telnet
print 'Creating shell server instance'
factory = telnet.ShellFactory()
port = 8888
reactor.listenTCP(port, factory)
factory.namespace['${1}'] = 'hello world'
factory.username = 'vincent'
factory.password = 'foo'
print 'Listening on port %d' % port


XPT ipy 
#############  Embeded IPython #############
try:
__IPYTHON__
except NameError:
from IPython.Shell import IPShellEmbed
ipshell = IPShellEmbed()
# Now ipshell() will open IPython anywhere in the code
else:
# Define a dummy ipshell() so the same code doesn’t crash inside an
# interactive IPython
def ipshell(): pass

ipshell('***Hit Ctrl-D to exit interpreter and continue program.')
#############       END        #############


XPT header
#! /usr/bin/env python
# -*- coding: utf8 -*- 
