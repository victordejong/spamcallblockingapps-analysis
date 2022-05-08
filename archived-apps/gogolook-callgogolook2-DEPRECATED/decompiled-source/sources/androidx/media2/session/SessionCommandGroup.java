package androidx.media2.session;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.util.ObjectsCompat;
import androidx.media2.session.SessionCommand;
import androidx.versionedparcelable.VersionedParcelable;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroup.class */
public final class SessionCommandGroup implements VersionedParcelable {
    public static final String TAG = "SessionCommandGroup";
    public Set<SessionCommand> mCommands = new HashSet();

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroup$Builder.class */
    public static final class Builder {
        public Set<SessionCommand> mCommands;

        public Builder() {
            this.mCommands = new HashSet();
        }

        public Builder(@NonNull SessionCommandGroup sessionCommandGroup) {
            if (sessionCommandGroup != null) {
                this.mCommands = sessionCommandGroup.getCommands();
                return;
            }
            throw new NullPointerException("commandGroup shouldn't be null");
        }

        private void addCommands(int i, ArrayMap<Integer, SessionCommand.Range> arrayMap) {
            for (int i2 = 1; i2 <= i; i2++) {
                SessionCommand.Range range = arrayMap.get(Integer.valueOf(i2));
                for (int i3 = range.lower; i3 <= range.upper; i3++) {
                    addCommand(new SessionCommand(i3));
                }
            }
        }

        @NonNull
        public Builder addAllLibraryCommands(int i) {
            addCommands(i, SessionCommand.VERSION_LIBRARY_COMMANDS_MAP);
            return this;
        }

        @NonNull
        public Builder addAllPlayerBasicCommands(int i) {
            addCommands(i, SessionCommand.VERSION_PLAYER_BASIC_COMMANDS_MAP);
            return this;
        }

        @NonNull
        public Builder addAllPlayerCommands(int i, boolean z) {
            addAllPlayerBasicCommands(i);
            addAllPlayerPlaylistCommands(i);
            if (z) {
                addAllPlayerHiddenCommands(i);
            }
            return this;
        }

        @NonNull
        public Builder addAllPlayerHiddenCommands(int i) {
            addCommands(i, SessionCommand.VERSION_PLAYER_HIDDEN_COMMANDS_MAP);
            return this;
        }

        @NonNull
        public Builder addAllPlayerPlaylistCommands(int i) {
            addCommands(i, SessionCommand.VERSION_PLAYER_PLAYLIST_COMMANDS_MAP);
            return this;
        }

        @NonNull
        public Builder addAllPredefinedCommands(int i) {
            if (i == 1) {
                addAllPlayerCommands(i, true);
                addAllVolumeCommands(i);
                addAllSessionCommands(i);
                addAllLibraryCommands(i);
                return this;
            }
            throw new IllegalArgumentException("Unknown command version " + i);
        }

        @NonNull
        public Builder addAllSessionCommands(int i) {
            addCommands(i, SessionCommand.VERSION_SESSION_COMMANDS_MAP);
            return this;
        }

        @NonNull
        public Builder addAllVolumeCommands(int i) {
            addCommands(i, SessionCommand.VERSION_VOLUME_COMMANDS_MAP);
            return this;
        }

        @NonNull
        public Builder addCommand(@NonNull SessionCommand sessionCommand) {
            if (sessionCommand != null) {
                this.mCommands.add(sessionCommand);
                return this;
            }
            throw new NullPointerException("command shouldn't be null");
        }

        @NonNull
        public SessionCommandGroup build() {
            return new SessionCommandGroup(this.mCommands);
        }

        @NonNull
        public Builder removeCommand(@NonNull SessionCommand sessionCommand) {
            if (sessionCommand != null) {
                this.mCommands.remove(sessionCommand);
                return this;
            }
            throw new NullPointerException("command shouldn't be null");
        }
    }

    public SessionCommandGroup() {
    }

    public SessionCommandGroup(@Nullable Collection<SessionCommand> collection) {
        if (collection != null) {
            this.mCommands.addAll(collection);
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionCommandGroup)) {
            return false;
        }
        SessionCommandGroup sessionCommandGroup = (SessionCommandGroup) obj;
        Set<SessionCommand> set = this.mCommands;
        if (set != null) {
            return set.equals(sessionCommandGroup.mCommands);
        }
        if (sessionCommandGroup.mCommands != null) {
            z = false;
        }
        return z;
    }

    @NonNull
    public Set<SessionCommand> getCommands() {
        return new HashSet(this.mCommands);
    }

    public boolean hasCommand(int i) {
        if (i != 0) {
            for (SessionCommand sessionCommand : this.mCommands) {
                if (sessionCommand.getCommandCode() == i) {
                    return true;
                }
            }
            return false;
        }
        throw new IllegalArgumentException("Use hasCommand(Command) for custom command");
    }

    public boolean hasCommand(@NonNull SessionCommand sessionCommand) {
        if (sessionCommand != null) {
            return this.mCommands.contains(sessionCommand);
        }
        throw new NullPointerException("command shouldn't be null");
    }

    public int hashCode() {
        return ObjectsCompat.hashCode(this.mCommands);
    }
}
