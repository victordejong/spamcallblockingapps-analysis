package com.birbit.android.jobqueue;

import com.birbit.android.jobqueue.log.JqLog;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/RunningJobSet.class */
public class RunningJobSet {
    private ArrayList<String> publicClone;
    private final Timer timer;
    private final TreeSet<String> internalSet = new TreeSet<>();
    private final Map<String, Long> groupDelays = new HashMap();
    private long groupDelayTimeout = Long.MAX_VALUE;

    public RunningJobSet(Timer timer) {
        this.timer = timer;
    }

    private long calculateNextDelayForGroups() {
        long j = Long.MAX_VALUE;
        for (Long l : this.groupDelays.values()) {
            if (l.longValue() < j) {
                j = l.longValue();
            }
        }
        return j;
    }

    public void add(String str) {
        synchronized (this) {
            if (str != null) {
                if (this.internalSet.add(str)) {
                    this.publicClone = null;
                }
            }
        }
    }

    public void addGroupUntil(String str, long j) {
        synchronized (this) {
            JqLog.m392d("add group delay to %s until %s", str, Long.valueOf(j));
            Long l = this.groupDelays.get(str);
            if (l == null || l.longValue() <= j) {
                this.groupDelays.put(str, Long.valueOf(j));
                this.groupDelayTimeout = calculateNextDelayForGroups();
                this.publicClone = null;
            }
        }
    }

    public void clear() {
        synchronized (this) {
            this.internalSet.clear();
            this.groupDelays.clear();
            this.publicClone = null;
        }
    }

    public Long getNextDelayForGroups() {
        if (this.groupDelayTimeout == Long.MAX_VALUE) {
            return null;
        }
        return Long.valueOf(this.groupDelayTimeout);
    }

    public Collection<String> getSafe() {
        ArrayList<String> arrayList;
        synchronized (this) {
            long nanoTime = this.timer.nanoTime();
            if (this.publicClone == null || nanoTime > this.groupDelayTimeout) {
                if (this.groupDelays.isEmpty()) {
                    this.publicClone = new ArrayList<>(this.internalSet);
                    this.groupDelayTimeout = Long.MAX_VALUE;
                } else {
                    TreeSet treeSet = new TreeSet((SortedSet) this.internalSet);
                    Iterator<Map.Entry<String, Long>> it = this.groupDelays.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<String, Long> next = it.next();
                        if (next.getValue().longValue() <= nanoTime) {
                            it.remove();
                        } else if (!treeSet.contains(next.getKey())) {
                            treeSet.add(next.getKey());
                        }
                    }
                    this.publicClone = new ArrayList<>(treeSet);
                    this.groupDelayTimeout = calculateNextDelayForGroups();
                }
            }
            arrayList = this.publicClone;
        }
        return arrayList;
    }

    public void remove(String str) {
        synchronized (this) {
            if (str != null) {
                if (this.internalSet.remove(str)) {
                    this.publicClone = null;
                }
            }
        }
    }
}
