package org.junit.runner;

import org.junit.runner.manipulation.Filter;
/* loaded from: classes2-dex2jar.jar:org/junit/runner/FilterFactory.class */
public interface FilterFactory {

    /* loaded from: classes2-dex2jar.jar:org/junit/runner/FilterFactory$FilterNotCreatedException.class */
    public static class FilterNotCreatedException extends Exception {
        public FilterNotCreatedException(Exception exc) {
            super(exc.getMessage(), exc);
        }
    }

    Filter createFilter(FilterFactoryParams filterFactoryParams) throws FilterNotCreatedException;
}
