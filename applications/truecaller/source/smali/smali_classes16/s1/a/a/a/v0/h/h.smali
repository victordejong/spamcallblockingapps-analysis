.class public abstract Ls1/a/a/a/v0/h/h;
.super Ls1/a/a/a/v0/h/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/h/h$f;,
        Ls1/a/a/a/v0/h/h$e;,
        Ls1/a/a/a/v0/h/h$c;,
        Ls1/a/a/a/v0/h/h$d;,
        Ls1/a/a/a/v0/h/h$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ls1/a/a/a/v0/h/a;-><init>()V

    return-void
.end method

.method public static b(Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/h/i$b;ILs1/a/a/a/v0/h/y;ZLjava/lang/Class;)Ls1/a/a/a/v0/h/h$f;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Ls1/a/a/a/v0/h/p;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Ls1/a/a/a/v0/h/p;",
            "Ls1/a/a/a/v0/h/i$b<",
            "*>;I",
            "Ls1/a/a/a/v0/h/y;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Ls1/a/a/a/v0/h/h$f<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 2
    new-instance v6, Ls1/a/a/a/v0/h/h$f;

    new-instance v4, Ls1/a/a/a/v0/h/h$e;

    const/4 v8, 0x0

    const/4 v11, 0x1

    move-object v7, v4

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Ls1/a/a/a/v0/h/h$e;-><init>(Ls1/a/a/a/v0/h/i$b;ILs1/a/a/a/v0/h/y;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/h/h$f;-><init>(Ls1/a/a/a/v0/h/p;Ljava/lang/Object;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/h/h$e;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static c(Ls1/a/a/a/v0/h/p;Ljava/lang/Object;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/h/i$b;ILs1/a/a/a/v0/h/y;Ljava/lang/Class;)Ls1/a/a/a/v0/h/h$f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Ls1/a/a/a/v0/h/p;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Ls1/a/a/a/v0/h/p;",
            "Ls1/a/a/a/v0/h/i$b<",
            "*>;I",
            "Ls1/a/a/a/v0/h/y;",
            "Ljava/lang/Class;",
            ")",
            "Ls1/a/a/a/v0/h/h$f<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1
    new-instance p3, Ls1/a/a/a/v0/h/h$f;

    new-instance v6, Ls1/a/a/a/v0/h/h$e;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/h/h$e;-><init>(Ls1/a/a/a/v0/h/i$b;ILs1/a/a/a/v0/h/y;ZZ)V

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/h/h$f;-><init>(Ls1/a/a/a/v0/h/p;Ljava/lang/Object;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/h/h$e;Ljava/lang/Class;)V

    return-object p3
.end method
