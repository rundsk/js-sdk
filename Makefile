# Copyright 2020 Marius Wilms, Christoph Labacher. All rights reserved.
# Copyright 2019 Atelier Disko. All rights reserved.
#
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

node_modules: yarn.lock
	yarn install

.PHONY: prettier
prettier: node_modules
	node_modules/.bin/prettier --write **/*.js
