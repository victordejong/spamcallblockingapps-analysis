.class Lzendesk/support/SupportApplicationModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private applicationScope:Lzendesk/support/ApplicationScope;


# direct methods
.method constructor <init>(Lzendesk/support/ApplicationScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportApplicationModule;->applicationScope:Lzendesk/support/ApplicationScope;

    return-void
.end method


# virtual methods
.method provideLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportApplicationModule;->applicationScope:Lzendesk/support/ApplicationScope;

    invoke-virtual {v0}, Lzendesk/support/ApplicationScope;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method provideMetadata(Landroid/content/Context;)Lzendesk/support/SupportSdkMetadata;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/SupportSdkMetadata;

    invoke-direct {v0, p1}, Lzendesk/support/SupportSdkMetadata;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method providesZendeskTracker()Lzendesk/support/ZendeskTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportApplicationModule;->applicationScope:Lzendesk/support/ApplicationScope;

    invoke-virtual {v0}, Lzendesk/support/ApplicationScope;->getZendeskTracker()Lzendesk/support/ZendeskTracker;

    move-result-object v0

    return-object v0
.end method
