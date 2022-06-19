.class public final Le/a/g/a/b/a$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/a;->wz(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/b/a;


# direct methods
.method public constructor <init>(Le/a/g/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/a$n;->a:Le/a/g/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/g/a/b/a$n;->a:Le/a/g/a/b/a;

    invoke-virtual {p1}, Le/a/g/a/b/a;->RA()Le/a/g/a/b/g;

    move-result-object p1

    check-cast p1, Le/a/g/a/b/l;

    .line 2
    iget-object v0, p1, Le/a/g/a/b/l;->J0:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Le/a/g/a/b/l;->dl(Z)V

    :cond_0
    return-void
.end method
