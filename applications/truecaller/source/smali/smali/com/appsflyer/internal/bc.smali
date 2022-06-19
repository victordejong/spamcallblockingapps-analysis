.class public final Lcom/appsflyer/internal/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/internal/ba;


# instance fields
.field private final values:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appsflyer/internal/bc;->values:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/bc;->values:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final AFKeystoreWrapper(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/bc;->values:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method
