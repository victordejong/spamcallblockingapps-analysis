.class public final Lzendesk/support/DaggerSupportSdkComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/DaggerSupportSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private coreModule:Lzendesk/core/CoreModule;

.field private supportModule:Lzendesk/support/SupportModule;

.field private supportSdkModule:Lzendesk/support/SupportSdkModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/DaggerSupportSdkComponent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzendesk/support/DaggerSupportSdkComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lzendesk/support/SupportSdkComponent;
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    const-class v1, Lzendesk/core/CoreModule;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportModule:Lzendesk/support/SupportModule;

    const-class v1, Lzendesk/support/SupportModule;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportSdkModule:Lzendesk/support/SupportSdkModule;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lzendesk/support/SupportSdkModule;

    invoke-direct {v0}, Lzendesk/support/SupportSdkModule;-><init>()V

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportSdkModule:Lzendesk/support/SupportSdkModule;

    .line 5
    :cond_0
    new-instance v0, Lzendesk/support/DaggerSupportSdkComponent;

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportModule:Lzendesk/support/SupportModule;

    iget-object v3, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportSdkModule:Lzendesk/support/SupportSdkModule;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lzendesk/support/DaggerSupportSdkComponent;-><init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;Lzendesk/support/DaggerSupportSdkComponent$1;)V

    return-object v0
.end method

.method public coreModule(Lzendesk/core/CoreModule;)Lzendesk/support/DaggerSupportSdkComponent$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lzendesk/core/CoreModule;

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    return-object p0
.end method

.method public supportModule(Lzendesk/support/SupportModule;)Lzendesk/support/DaggerSupportSdkComponent$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lzendesk/support/SupportModule;

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportModule:Lzendesk/support/SupportModule;

    return-object p0
.end method

.method public supportSdkModule(Lzendesk/support/SupportSdkModule;)Lzendesk/support/DaggerSupportSdkComponent$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lzendesk/support/SupportSdkModule;

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportSdkModule:Lzendesk/support/SupportSdkModule;

    return-object p0
.end method
