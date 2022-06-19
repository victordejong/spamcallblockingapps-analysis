.class public final Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/i/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final executorServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/SupportSdkModule;

.field private final okHttpClientProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->module:Lzendesk/support/SupportSdkModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->contextProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->okHttpClientProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->executorServiceProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;-><init>(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static providesPicasso(Lzendesk/support/SupportSdkModule;Landroid/content/Context;Lm/c0;Ljava/util/concurrent/ExecutorService;)Lg/i/a/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lzendesk/support/SupportSdkModule;->providesPicasso(Landroid/content/Context;Lm/c0;Ljava/util/concurrent/ExecutorService;)Lg/i/a/d;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/i/a/d;

    return-object p0
.end method


# virtual methods
.method public get()Lg/i/a/d;
    .locals 4

    .line 2
    iget-object v0, p0, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->module:Lzendesk/support/SupportSdkModule;

    iget-object v1, p0, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->contextProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->okHttpClientProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/c0;

    iget-object v3, p0, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->executorServiceProvider:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2, v3}, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->providesPicasso(Lzendesk/support/SupportSdkModule;Landroid/content/Context;Lm/c0;Ljava/util/concurrent/ExecutorService;)Lg/i/a/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->get()Lg/i/a/d;

    move-result-object v0

    return-object v0
.end method
