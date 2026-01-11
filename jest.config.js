/** @type {import('ts-jest').JestConfigWithTsJest} */
module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  roots: ['<rootDir>/tests'],
  testMatch: ['**/*.test.ts', '**/*.spec.ts'],
  passWithNoTests: true,
  collectCoverageFrom: [
    'src/**/*.ts',
    'lib/**/*.ts',
    '!**/*.d.ts',
  ],
  coverageDirectory: 'coverage',
  coverageReporters: ['text', 'lcov', 'clover'],
  moduleNameMapper: {
    '^@core/(.*)$': '<rootDir>/src/Core/$1',
    '^@infrastructure/(.*)$': '<rootDir>/src/Infrastructure/$1',
    '^@presentation/(.*)$': '<rootDir>/src/Presentation/$1',
    '^@shared-kernel/(.*)$': '<rootDir>/lib/shared-kernel/src/$1',
    '^@std-lib/(.*)$': '<rootDir>/lib/std-lib/src/$1',
  },
};
