.class public final Lzendesk/support/SupportSdkModule_ProvidesFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/google/gson/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportSdkModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportSdkModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportSdkModule_ProvidesFactory;->module:Lzendesk/support/SupportSdkModule;

    return-void
.end method

.method public static create(Lzendesk/support/SupportSdkModule;)Lzendesk/support/SupportSdkModule_ProvidesFactory;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/SupportSdkModule_ProvidesFactory;

    invoke-direct {v0, p0}, Lzendesk/support/SupportSdkModule_ProvidesFactory;-><init>(Lzendesk/support/SupportSdkModule;)V

    return-object v0
.end method

.method public static provides(Lzendesk/support/SupportSdkModule;)Lcom/google/gson/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportSdkModule;->provides()Lcom/google/gson/f;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/gson/f;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/gson/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/SupportSdkModule_ProvidesFactory;->module:Lzendesk/support/SupportSdkModule;

    invoke-static {v0}, Lzendesk/support/SupportSdkModule_ProvidesFactory;->provides(Lzendesk/support/SupportSdkModule;)Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportSdkModule_ProvidesFactory;->get()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method
