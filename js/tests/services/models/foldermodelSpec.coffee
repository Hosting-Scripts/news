###

ownCloud - News

@author Bernhard Posselt
@copyright 2012 Bernhard Posselt nukeawhale@gmail.com

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU AFFERO GENERAL PUBLIC LICENSE
License as published by the Free Software Foundation; either
version 3 of the License, or any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU AFFERO GENERAL PUBLIC LICENSE for more details.

You should have received a copy of the GNU Affero General Public
License along with this library.  If not, see <http://www.gnu.org/licenses/>.

###

describe '_FolderModel', ->


	beforeEach module 'News'

	beforeEach inject (@_FolderModel, @_Model) =>


	it 'should extend model', =>
		expect(new @_FolderModel instanceof @_Model).toBeTruthy()


	it 'should allow to search for foldernames', =>
		model = new @_FolderModel()
		model.add({id: 3, name: 'hi'})

		expect(model.nameExists('hi')).toBeTruthy()
		expect(model.nameExists('dhi')).toBeFalsy()