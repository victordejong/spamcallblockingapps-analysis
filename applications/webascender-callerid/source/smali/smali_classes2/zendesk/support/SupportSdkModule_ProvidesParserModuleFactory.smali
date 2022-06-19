.class public final Lzendesk/support/SupportSdkModule_ProvidesParserModuleFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ljava/util/List<",
        "Lzendesk/support/ZendeskDeepLinkParser$Module;",
        ">;>;"
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
    iput-object p1, p0, Lzendesk/support/SupportSdkModule_ProvidesParserModuleFactory;->module:Lzendesk/support/SupportSdkModule;

    return-void
.end method

.method public static create(Lzendesk/support/SupportSdkModule;)Lzendesk/support/SupportSdkModule_ProvidesParserModuleFactory;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/SupportSdkModule_ProvidesParserModuleFactory;

    invoke-direct {v0, p0}, Lzendesk/support/SupportSdkModule_ProvidesParserModuleFactory;-><init>(Lzendesk/support/SupportSdkModule;)V

    return-object v0
.end method

.method public static providesParserModule(Lzendesk/support/SupportSdkModule;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/support/ZendeskDeepLinkParser$Module;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportSdkModule;->providesParserModule()Ljava/util/List;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportSdkModule_ProvidesParserModuleFactory;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/ZendeskDeepLinkParser$Module;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lzendesk/support/SupportSdkModule_ProvidesParserModuleFactory;->module:Lzendesk/support/SupportSdkModule;

    invoke-static {v0}, Lzendesk/support/SupportSdkModule_ProvidesParserModuleFactory;->providesParserModule(Lzendesk/support/SupportSdkModule;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
