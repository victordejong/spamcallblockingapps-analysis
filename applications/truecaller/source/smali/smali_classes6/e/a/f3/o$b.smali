.class public final Le/a/f3/o$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f3/o;-><init>(Ls1/w/f;Ls1/w/f;Lo3/a;Landroid/content/Context;Lo3/a;Le/a/p5/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lq3/a/w2/j<",
        "Ls1/z/b/l<",
        "-",
        "Lcom/truecaller/callbubbles/CallBubblesContainerView;",
        "+",
        "Ls1/s;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/f3/o$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/f3/o$b;

    invoke-direct {v0}, Le/a/f3/o$b;-><init>()V

    sput-object v0, Le/a/f3/o$b;->b:Le/a/f3/o$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    const v0, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 1
    invoke-static {v0, v1, v1, v2}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object v0

    return-object v0
.end method
