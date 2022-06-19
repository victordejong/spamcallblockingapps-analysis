.class public final Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lm/l0/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;

    invoke-direct {v0}, Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;-><init>()V

    sput-object v0, Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;->INSTANCE:Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;->INSTANCE:Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;

    return-object v0
.end method

.method public static provideHttpLoggingInterceptor()Lm/l0/a;
    .locals 2

    .line 1
    invoke-static {}, Lzendesk/core/ZendeskApplicationModule;->provideHttpLoggingInterceptor()Lm/l0/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lm/l0/a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;->get()Lm/l0/a;

    move-result-object v0

    return-object v0
.end method

.method public get()Lm/l0/a;
    .locals 1

    .line 2
    invoke-static {}, Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;->provideHttpLoggingInterceptor()Lm/l0/a;

    move-result-object v0

    return-object v0
.end method
