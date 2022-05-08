package com.privacystar.core.data.providers.custom;

import android.os.AsyncTask;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.providers.ArrayDataProvider;
import com.privacystar.core.data.providers.CombinedProvider;
import com.privacystar.core.data.providers.DataProvider;
import com.privacystar.core.data.providers.LogCursor;
import com.privacystar.core.data.providers.standard.CallDetailsMerger;
import com.privacystar.core.data.providers.standard.CallLogDataProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/custom/OffenderRecentActivityProvider.class */
public class OffenderRecentActivityProvider extends ArrayDataProvider<CallDetails> {
    CallDetails[] cache;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/custom/OffenderRecentActivityProvider$AsyncFilter.class */
    public static class AsyncFilter extends AsyncTask<DataProvider<CallDetails>, Integer, List<CallDetails>> {

        /* renamed from: cb */
        OffenderTableCallback f265cb;
        private boolean shouldStop = false;

        public AsyncFilter(OffenderTableCallback offenderTableCallback) {
            this.f265cb = offenderTableCallback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public List<CallDetails> doInBackground(DataProvider<CallDetails>[] dataProviderArr) {
            LogCursor cursor = new CombinedProvider(new CallDetailsMerger(), dataProviderArr).getCursor();
            HashMap hashMap = new HashMap();
            while (cursor.hasNext()) {
                if (this.shouldStop) {
                    return Collections.emptyList();
                }
                CallDetails callDetails = (CallDetails) cursor.getNext();
                String number = callDetails.getCaller().getNumber();
                if (callDetails.getCaller().isOffender(false)) {
                    if (!hashMap.containsKey(number)) {
                        hashMap.put(number, callDetails);
                    } else if (((CallDetails) hashMap.get(number)).getMostRecentEvent().getDate() < callDetails.getMostRecentEvent().getDate()) {
                        hashMap.put(number, callDetails);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(hashMap.values());
            Collections.sort(arrayList, new CallDetails.DateComparator());
            return arrayList;
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            this.shouldStop = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(List<CallDetails> list) {
            super.onPostExecute((AsyncFilter) list);
            this.f265cb.finishedLoading(new OffenderRecentActivityProvider((CallDetails[]) list.toArray(new CallDetails[list.size()])));
        }
    }

    @FunctionalInterface
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/custom/OffenderRecentActivityProvider$OffenderTableCallback.class */
    public interface OffenderTableCallback {
        void finishedLoading(OffenderRecentActivityProvider offenderRecentActivityProvider);
    }

    private OffenderRecentActivityProvider(CallDetails[] callDetailsArr) {
        super(callDetailsArr);
    }

    private static void getAsync(OffenderTableCallback offenderTableCallback, DataProvider<CallDetails>[] dataProviderArr) {
        new AsyncFilter(offenderTableCallback).execute(dataProviderArr);
    }

    public static void newDefaultInstance(OffenderTableCallback offenderTableCallback) {
        newInstanceWithProviders(offenderTableCallback, new DataProvider[]{new CallLogDataProvider()});
    }

    public static void newInstanceWithProviders(OffenderTableCallback offenderTableCallback, DataProvider<CallDetails>[] dataProviderArr) {
        getAsync(offenderTableCallback, dataProviderArr);
    }

    public void setCache(CallDetails[] callDetailsArr) {
        this.cache = callDetailsArr;
    }

    public void setup() {
        this.cache = new CallDetails[0];
    }
}
