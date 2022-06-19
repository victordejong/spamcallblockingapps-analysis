.class public final Le/a/a/o/h$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o/h;->Fv(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/o/h;


# direct methods
.method public constructor <init>(Le/a/a/o/h;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/h$f;->a:Le/a/a/o/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/o/h$f;->a:Le/a/a/o/h;

    invoke-virtual {p1}, Le/a/a/o/h;->RA()Le/a/a/o/k;

    move-result-object p1

    check-cast p1, Le/a/a/o/o;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/l;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/a/o/l;->Ck()V

    :cond_0
    return-void
.end method
