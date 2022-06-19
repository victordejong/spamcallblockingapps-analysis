.class public final synthetic Le/a/f4/b/f/c;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Le/a/f4/b/f/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/f4/b/f/c;

    invoke-direct {v0}, Le/a/f4/b/f/c;-><init>()V

    sput-object v0, Le/a/f4/b/f/c;->j:Le/a/f4/b/f/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Ls1/f0/l;

    const/4 v1, 0x1

    const-string v3, "trim"

    const-string v4, "trim(Ljava/lang/String;)Ljava/lang/String;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ls1/z/c/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
