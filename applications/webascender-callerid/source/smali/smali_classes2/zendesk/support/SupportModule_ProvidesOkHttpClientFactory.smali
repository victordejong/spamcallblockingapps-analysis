.class public final Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lm/c0;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;->module:Lzendesk/support/SupportModule;

    return-void
.end method

.method public static create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;

    invoke-direct {v0, p0}, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;-><init>(Lzendesk/support/SupportModule;)V

    return-object v0
.end method

.method public static providesOkHttpClient(Lzendesk/support/SupportModule;)Lm/c0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportModule;->providesOkHttpClient()Lm/c0;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lm/c0;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;->get()Lm/c0;

    move-result-object v0

    return-object v0
.end method

.method public get()Lm/c0;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;->module:Lzendesk/support/SupportModule;

    invoke-static {v0}, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;->providesOkHttpClient(Lzendesk/support/SupportModule;)Lm/c0;

    move-result-object v0

    return-object v0
.end method
