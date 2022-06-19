.class public final synthetic Le/a/a/c/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/t1;->a:Le/a/a/c/y3;

    iput-object p2, p0, Le/a/a/c/t1;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Le/a/a/c/t1;->a:Le/a/a/c/y3;

    iget-object v0, p0, Le/a/a/c/t1;->b:Landroid/net/Uri;

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {p1, v0}, Le/a/a/c/f4;->vh(Landroid/net/Uri;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {p1, v0}, Le/a/a/c/f4;->a4(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method
