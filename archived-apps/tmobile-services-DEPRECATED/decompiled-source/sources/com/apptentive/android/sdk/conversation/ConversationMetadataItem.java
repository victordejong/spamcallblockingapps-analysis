package com.apptentive.android.sdk.conversation;

import androidx.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.serialization.SerializableObject;
import com.apptentive.android.sdk.util.Util;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/ConversationMetadataItem.class */
public class ConversationMetadataItem implements SerializableObject {
    @Nullable
    private String conversationEncryptionKey;
    @Nullable
    private String conversationId;
    private ConversationState conversationState;
    @Nullable
    private String conversationToken;
    private final File dataFile;
    private final String localConversationId;
    private final File messagesFile;
    @Nullable
    private String userId;

    public ConversationMetadataItem(DataInput dataInput) throws IOException {
        this.conversationState = ConversationState.UNDEFINED;
        this.localConversationId = dataInput.readUTF();
        this.conversationId = Util.readNullableUTF(dataInput);
        this.conversationToken = Util.readNullableUTF(dataInput);
        this.dataFile = Util.getEncryptedFilename(new File(dataInput.readUTF()));
        this.messagesFile = Util.getEncryptedFilename(new File(dataInput.readUTF()));
        this.conversationState = ConversationState.valueOf(dataInput.readByte());
        this.conversationEncryptionKey = Util.readNullableUTF(dataInput);
        this.userId = Util.readNullableUTF(dataInput);
    }

    public ConversationMetadataItem(String str, String str2, File file, File file2) {
        this.conversationState = ConversationState.UNDEFINED;
        if (str == null) {
            throw new IllegalArgumentException("Local conversation id is null");
        } else if (file == null) {
            throw new IllegalArgumentException("Data file is null");
        } else if (file2 != null) {
            this.localConversationId = str;
            this.conversationId = str2;
            this.dataFile = file;
            this.messagesFile = file2;
        } else {
            throw new IllegalArgumentException("Messages file is null");
        }
    }

    @Nullable
    public String getConversationEncryptionKey() {
        return this.conversationEncryptionKey;
    }

    @Nullable
    public String getConversationId() {
        return this.conversationId;
    }

    public ConversationState getConversationState() {
        return this.conversationState;
    }

    @Nullable
    public String getConversationToken() {
        return this.conversationToken;
    }

    public File getDataFile() {
        return this.dataFile;
    }

    public String getLocalConversationId() {
        return this.localConversationId;
    }

    public File getMessagesFile() {
        return this.messagesFile;
    }

    @Nullable
    public String getUserId() {
        return this.userId;
    }

    public void setConversationEncryptionKey(@Nullable String str) {
        this.conversationEncryptionKey = str;
    }

    public void setConversationId(String str) {
        this.conversationId = str;
    }

    public void setConversationState(ConversationState conversationState) {
        this.conversationState = conversationState;
    }

    public void setConversationToken(String str) {
        this.conversationToken = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public String toString() {
        return "ConversationMetadataItem{conversationState=" + this.conversationState + ", localConversationId='" + this.localConversationId + "', conversationId='" + this.conversationId + "', conversationToken='" + ApptentiveLog.hideIfSanitized(this.conversationToken) + "', dataFile=" + this.dataFile + ", messagesFile=" + this.messagesFile + ", conversationEncryptionKey='" + ApptentiveLog.hideIfSanitized(this.conversationEncryptionKey) + "', userId='" + this.userId + "'}";
    }

    @Override // com.apptentive.android.sdk.serialization.SerializableObject
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(this.localConversationId);
        Util.writeNullableUTF(dataOutput, this.conversationId);
        Util.writeNullableUTF(dataOutput, this.conversationToken);
        dataOutput.writeUTF(this.dataFile.getAbsolutePath());
        dataOutput.writeUTF(this.messagesFile.getAbsolutePath());
        dataOutput.writeByte(this.conversationState.ordinal());
        Util.writeNullableUTF(dataOutput, this.conversationEncryptionKey);
        Util.writeNullableUTF(dataOutput, this.userId);
    }
}
