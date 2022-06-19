.class public final Le/a/e3/j/g$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e3/j/g;-><init>(Le/a/e3/k/b;Le/a/p5/c0;Landroid/content/Context;Le/a/r2/f;Le/a/e3/k/e;Le/a/e3/k/i;Le/a/e3/k/d;Le/a/o/c;Lo3/a;Le/a/e3/k/c;Le/a/e3/k/p;Le/a/u3/g;Ls1/w/f;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ln3/b/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e3/j/g;


# direct methods
.method public constructor <init>(Le/a/e3/j/g;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/j/g$f;->b:Le/a/e3/j/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ln3/b/e/c;

    iget-object v1, p0, Le/a/e3/j/g$f;->b:Le/a/e3/j/g;

    .line 2
    iget-object v1, v1, Le/a/e3/j/g;->f:Landroid/content/Context;

    .line 3
    sget v2, Lcom/truecaller/call_alert/R$style;->ThemeCallAlertNotificationDefault:I

    invoke-direct {v0, v1, v2}, Ln3/b/e/c;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
