.class public final Le/a/w4/s/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/w4/s/p0$a;
    }
.end annotation


# static fields
.field public static final synthetic g:[Ls1/a/l;


# instance fields
.field public a:Lq3/a/p1;

.field public final b:Le/a/h0/j;

.field public final c:Le/a/k3/j/b;

.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Le/a/k3/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/u;

    const-class v2, Le/a/w4/s/p0;

    const-string v3, "weakListener"

    const-string v4, "<v#0>"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ls1/z/c/u;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Ls1/z/c/d0;->c(Ls1/z/c/t;)Ls1/a/j;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Le/a/w4/s/p0;->g:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h0/j;Le/a/k3/j/b;Ls1/w/f;Ls1/w/f;Le/a/k3/d;)V
    .locals 1

    const-string v0, "filterManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCoroutineContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraInfoReaderProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/s/p0;->b:Le/a/h0/j;

    iput-object p2, p0, Le/a/w4/s/p0;->c:Le/a/k3/j/b;

    iput-object p3, p0, Le/a/w4/s/p0;->d:Ls1/w/f;

    iput-object p4, p0, Le/a/w4/s/p0;->e:Ls1/w/f;

    iput-object p5, p0, Le/a/w4/s/p0;->f:Le/a/k3/d;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/s/p0;->a:Lq3/a/p1;

    return-void
.end method
