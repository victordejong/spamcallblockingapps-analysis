.class public final Le/a/t/a/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/a/a;-><init>(Landroid/content/Context;Le/a/t/a/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/a/a;

.field public final synthetic b:Le/a/t/a/a/b;


# direct methods
.method public constructor <init>(Le/a/t/a/a/a;Le/a/t/a/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/a/a$b;->a:Le/a/t/a/a/a;

    iput-object p2, p0, Le/a/t/a/a/a$b;->b:Le/a/t/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/t/a/a/a$b;->b:Le/a/t/a/a/b;

    iget-object v0, p0, Le/a/t/a/a/a$b;->a:Le/a/t/a/a/a;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "emoji"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "tenor_user_consent"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3
    :cond_0
    invoke-interface {p1, v1}, Le/a/t/a/a/b;->a(Z)V

    return-void
.end method
