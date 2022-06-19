.class public interface abstract Lzendesk/support/guide/HelpCenterMvp$Model;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getSettings(Lcom/zendesk/service/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/SupportSdkSettings;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract search(Ljava/util/List;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;Lcom/zendesk/service/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Ljava/util/List<",
            "Lzendesk/support/SearchArticle;",
            ">;>;)V"
        }
    .end annotation
.end method
