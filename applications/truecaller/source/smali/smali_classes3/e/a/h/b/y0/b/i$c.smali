.class public final Le/a/h/b/y0/b/i$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/y0/b/i;-><init>(Le/a/h/b/y0/b/a;Le/a/h/b/p0;Le/a/w4/t/a/e;Le/a/k3/l/f;Le/a/p5/c0;Le/a/z2/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/b/y0/b/i;


# direct methods
.method public constructor <init>(Le/a/h/b/y0/b/i;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/y0/b/i$c;->b:Le/a/h/b/y0/b/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/y0/b/i$c;->b:Le/a/h/b/y0/b/i;

    .line 2
    iget-object v0, v0, Le/a/h/b/y0/b/i;->i:Le/a/p5/c0;

    const v1, 0x7f080711

    .line 3
    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "resourceProvider.getDraw\u2026e.ic_tcx_event_spam_16dp)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
