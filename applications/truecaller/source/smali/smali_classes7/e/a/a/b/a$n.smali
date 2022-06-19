.class public final Le/a/a/b/a$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/a;->ip(Ljava/lang/String;ILandroid/net/Uri;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/b/a;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Le/a/a/b/a;I)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/a$n;->a:Le/a/a/b/a;

    iput p2, p0, Le/a/a/b/a$n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/b/a$n;->a:Le/a/a/b/a;

    invoke-virtual {p1}, Le/a/a/b/a;->QA()Le/a/a/b/p;

    move-result-object p1

    iget v0, p0, Le/a/a/b/a$n;->b:I

    invoke-interface {p1, v0}, Le/a/a/b/p;->Ws(I)V

    return-void
.end method
