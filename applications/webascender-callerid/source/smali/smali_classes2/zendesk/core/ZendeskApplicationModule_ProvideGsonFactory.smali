.class public final Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;
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


# static fields
.field private static final INSTANCE:Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;

    invoke-direct {v0}, Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;-><init>()V

    sput-object v0, Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;->INSTANCE:Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;->INSTANCE:Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;

    return-object v0
.end method

.method public static provideGson()Lcom/google/gson/f;
    .locals 2

    .line 1
    invoke-static {}, Lzendesk/core/ZendeskApplicationModule;->provideGson()Lcom/google/gson/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/f;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/gson/f;
    .locals 1

    .line 2
    invoke-static {}, Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;->provideGson()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;->get()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method
