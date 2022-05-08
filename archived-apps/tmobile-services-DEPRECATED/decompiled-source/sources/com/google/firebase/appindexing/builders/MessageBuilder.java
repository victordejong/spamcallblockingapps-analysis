package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/MessageBuilder.class */
public final class MessageBuilder extends IndexableBuilder<MessageBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageBuilder() {
        super("Message");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageBuilder(String str) {
        super(str);
    }

    public final MessageBuilder setDateRead(@NonNull Date date) {
        Preconditions.m14523k(date);
        return put("dateRead", date.getTime());
    }

    public final MessageBuilder setDateReceived(@NonNull Date date) {
        Preconditions.m14523k(date);
        return put("dateReceived", date.getTime());
    }

    public final MessageBuilder setDateSent(@NonNull Date date) {
        Preconditions.m14523k(date);
        return put("dateSent", date.getTime());
    }

    public final MessageBuilder setIsPartOf(@NonNull ConversationBuilder... conversationBuilderArr) {
        return put("isPartOf", conversationBuilderArr);
    }

    public final MessageBuilder setMessageAttachment(@NonNull IndexableBuilder<?>... indexableBuilderArr) {
        return put("messageAttachment", indexableBuilderArr);
    }

    public final MessageBuilder setRecipient(@NonNull PersonBuilder... personBuilderArr) {
        return put("recipient", personBuilderArr);
    }

    public final MessageBuilder setSender(@NonNull PersonBuilder personBuilder) {
        return put("sender", personBuilder);
    }

    public final MessageBuilder setText(@NonNull String str) {
        return put("text", str);
    }
}
