.class public final Le/a/h/b/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/c;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/h/b/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/c$h;->a:Le/a/h/b/c;

    iput-object p2, p0, Le/a/h/b/c$h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/h/b/c$h;->a:Le/a/h/b/c;

    .line 2
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 3
    iget-object v0, p0, Le/a/h/b/c$h;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/h/b/j0$a;->Ic(Ljava/lang/String;)V

    return-void
.end method
