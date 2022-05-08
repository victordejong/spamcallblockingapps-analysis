package com.privacystar.core.p011ui.intro.intro_core;

import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import java.util.List;
import java.util.ListIterator;
/* renamed from: com.privacystar.core.ui.intro.intro_core.IntroFragmentBundle */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroFragmentBundle.class */
public class IntroFragmentBundle {
    private Integer currentFragmentIndex;
    private List<IntroActivity.IntroActivityContent> fragmentList;
    private ListIterator<IntroActivity.IntroActivityContent> fragmentListIterator;
    private boolean movedToNextLast = false;
    private boolean movedToPreviousLast = false;

    public IntroFragmentBundle(List<IntroActivity.IntroActivityContent> list) {
        this.fragmentList = list;
        setInitialFragmentIndex();
    }

    private void setInitialFragmentIndex() {
        if (this.fragmentList != null) {
            setNextFragment(0, this.fragmentList.listIterator());
        }
    }

    private void setNextFragment(Integer num, ListIterator<IntroActivity.IntroActivityContent> listIterator) {
        this.movedToNextLast = true;
        if (this.movedToPreviousLast) {
            this.movedToPreviousLast = false;
            listIterator.next();
        }
        if (!(num == null || listIterator == null)) {
            while (listIterator.hasNext()) {
                int nextIndex = listIterator.nextIndex();
                if (listIterator.next().shouldDisplay()) {
                    this.currentFragmentIndex = Integer.valueOf(nextIndex);
                    this.fragmentListIterator = listIterator;
                    return;
                }
            }
        }
        this.currentFragmentIndex = null;
        this.fragmentListIterator = null;
    }

    private void setPreviousFragment(Integer num, ListIterator<IntroActivity.IntroActivityContent> listIterator) {
        this.movedToPreviousLast = true;
        if (this.movedToNextLast) {
            this.movedToNextLast = false;
            listIterator.previous();
        }
        if (!(num == null || listIterator == null)) {
            while (listIterator.hasPrevious()) {
                int previousIndex = listIterator.previousIndex();
                if (listIterator.previous().shouldDisplay()) {
                    this.currentFragmentIndex = Integer.valueOf(previousIndex);
                    this.fragmentListIterator = listIterator;
                    return;
                }
            }
        }
        this.currentFragmentIndex = null;
        this.fragmentListIterator = null;
    }

    public IntroActivity.IntroActivityContent consumeCurrentFragment() {
        if (getCurrentFragment() != null) {
            setNextFragment(this.currentFragmentIndex, this.fragmentListIterator);
        }
        return getCurrentFragment();
    }

    public IntroActivity.IntroActivityContent getCurrentFragment() {
        if (this.fragmentList == null || this.currentFragmentIndex == null) {
            return null;
        }
        return this.fragmentList.get(this.currentFragmentIndex.intValue());
    }

    public void resetCurrentFragment() {
        setInitialFragmentIndex();
    }

    public IntroActivity.IntroActivityContent rewindCurrentFragment() {
        if (getCurrentFragment() != null) {
            setPreviousFragment(this.currentFragmentIndex, this.fragmentListIterator);
        }
        return getCurrentFragment();
    }
}
