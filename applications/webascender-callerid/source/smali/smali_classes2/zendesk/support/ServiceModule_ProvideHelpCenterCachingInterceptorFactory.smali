.class public final Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/HelpCenterCachingInterceptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;

    invoke-direct {v0}, Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;-><init>()V

    sput-object v0, Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;->INSTANCE:Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;->INSTANCE:Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;

    return-object v0
.end method

.method public static provideHelpCenterCachingInterceptor()Lzendesk/support/HelpCenterCachingInterceptor;
    .locals 2

    .line 1
    invoke-static {}, Lzendesk/support/ServiceModule;->provideHelpCenterCachingInterceptor()Lzendesk/support/HelpCenterCachingInterceptor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lzendesk/support/HelpCenterCachingInterceptor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;->get()Lzendesk/support/HelpCenterCachingInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterCachingInterceptor;
    .locals 1

    .line 2
    invoke-static {}, Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;->provideHelpCenterCachingInterceptor()Lzendesk/support/HelpCenterCachingInterceptor;

    move-result-object v0

    return-object v0
.end method
