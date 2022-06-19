.class public final Le/a/d/c0/x1/f$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/x1/f;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/p5/g;Le/a/d/q/v;Le/a/p5/c0;Le/a/p5/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/p5/r0/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/x1/f;

.field public final synthetic c:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Le/a/d/c0/x1/f;Le/a/p5/a0;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/f$e;->b:Le/a/d/c0/x1/f;

    iput-object p2, p0, Le/a/d/c0/x1/f$e;->c:Le/a/p5/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Le/a/p5/r0/b;

    .line 2
    iget-object v1, p0, Le/a/d/c0/x1/f$e;->b:Le/a/d/c0/x1/f;

    .line 3
    iget-object v1, v1, Le/a/d/c0/x1/f;->j:Landroid/content/Context;

    .line 4
    sget v2, Lcom/truecaller/voip/R$string;->voip_button_bluetooth:I

    .line 5
    iget-object v3, p0, Le/a/d/c0/x1/f$e;->c:Le/a/p5/a0;

    .line 6
    invoke-direct {v0, v1, v2, v3}, Le/a/p5/r0/b;-><init>(Landroid/content/Context;ILe/a/p5/a0;)V

    return-object v0
.end method
