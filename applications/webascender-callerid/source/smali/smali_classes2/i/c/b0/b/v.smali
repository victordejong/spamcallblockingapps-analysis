.class public abstract Li/c/b0/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/a0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/a0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amb(Ljava/lang/Iterable;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Li/c/b0/e/f/e/h;-><init>([Li/c/b0/b/a0;Ljava/lang/Iterable;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ambArray([Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    invoke-static {p0}, Li/c/b0/b/v;->wrap(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Li/c/b0/e/f/e/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li/c/b0/e/f/e/h;-><init>([Li/c/b0/b/a0;Ljava/lang/Iterable;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static bufferSize()I
    .locals 1

    .line 1
    invoke-static {}, Li/c/b0/b/l;->b()I

    move-result v0

    return v0
.end method

.method public static combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/n;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/b/a0<",
            "+TT5;>;",
            "Li/c/b0/b/a0<",
            "+TT6;>;",
            "Li/c/b0/b/a0<",
            "+TT7;>;",
            "Li/c/b0/b/a0<",
            "+TT8;>;",
            "Li/c/b0/b/a0<",
            "+TT9;>;",
            "Li/c/b0/d/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 55
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 56
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 57
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 58
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 59
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 60
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 61
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 62
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 63
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 64
    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    .line 65
    invoke-static {p9}, Li/c/b0/e/b/a;->B(Li/c/b0/d/n;)Li/c/b0/d/o;

    move-result-object p0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result p1

    invoke-static {v0, p0, p1}, Li/c/b0/b/v;->combineLatestArray([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/m;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/b/a0<",
            "+TT5;>;",
            "Li/c/b0/b/a0<",
            "+TT6;>;",
            "Li/c/b0/b/a0<",
            "+TT7;>;",
            "Li/c/b0/b/a0<",
            "+TT8;>;",
            "Li/c/b0/d/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 45
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 46
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 47
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 48
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 49
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 50
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 51
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 52
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 53
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    .line 54
    invoke-static {p8}, Li/c/b0/e/b/a;->A(Li/c/b0/d/m;)Li/c/b0/d/o;

    move-result-object p0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result p1

    invoke-static {v0, p0, p1}, Li/c/b0/b/v;->combineLatestArray([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/l;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/b/a0<",
            "+TT5;>;",
            "Li/c/b0/b/a0<",
            "+TT6;>;",
            "Li/c/b0/b/a0<",
            "+TT7;>;",
            "Li/c/b0/d/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 36
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 37
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 38
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 39
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 40
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 41
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 42
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 43
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    .line 44
    invoke-static {p7}, Li/c/b0/e/b/a;->z(Li/c/b0/d/l;)Li/c/b0/d/o;

    move-result-object p0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result p1

    invoke-static {v0, p0, p1}, Li/c/b0/b/v;->combineLatestArray([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/k;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/b/a0<",
            "+TT5;>;",
            "Li/c/b0/b/a0<",
            "+TT6;>;",
            "Li/c/b0/d/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 28
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 29
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 30
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 31
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 32
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 33
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 34
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    .line 35
    invoke-static {p6}, Li/c/b0/e/b/a;->y(Li/c/b0/d/k;)Li/c/b0/d/o;

    move-result-object p0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result p1

    invoke-static {v0, p0, p1}, Li/c/b0/b/v;->combineLatestArray([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/j;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/b/a0<",
            "+TT5;>;",
            "Li/c/b0/d/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 21
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 22
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 23
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 24
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 25
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 26
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    .line 27
    invoke-static {p5}, Li/c/b0/e/b/a;->x(Li/c/b0/d/j;)Li/c/b0/d/o;

    move-result-object p0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result p1

    invoke-static {v0, p0, p1}, Li/c/b0/b/v;->combineLatestArray([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/i;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/d/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 15
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 17
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 18
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 19
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 20
    invoke-static {p4}, Li/c/b0/e/b/a;->w(Li/c/b0/d/i;)Li/c/b0/d/o;

    move-result-object p0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result p1

    invoke-static {v0, p0, p1}, Li/c/b0/b/v;->combineLatestArray([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/h;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/d/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 10
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 12
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 13
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 14
    invoke-static {p3}, Li/c/b0/e/b/a;->v(Li/c/b0/d/h;)Li/c/b0/d/o;

    move-result-object p0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result p1

    invoke-static {v0, p0, p1}, Li/c/b0/b/v;->combineLatestArray([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/d/c<",
            "-TT1;-TT2;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 6
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 8
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 9
    invoke-static {p2}, Li/c/b0/e/b/a;->u(Li/c/b0/d/c;)Li/c/b0/d/o;

    move-result-object p0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result p1

    invoke-static {v0, p0, p1}, Li/c/b0/b/v;->combineLatestArray([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Ljava/lang/Iterable;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Li/c/b0/b/v;->combineLatest(Ljava/lang/Iterable;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Ljava/lang/Iterable;Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 5
    new-instance p2, Li/c/b0/e/f/e/s;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/s;-><init>([Li/c/b0/b/a0;Ljava/lang/Iterable;Li/c/b0/d/o;IZ)V

    invoke-static {p2}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestArray([Li/c/b0/b/a0;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Li/c/b0/b/v;->combineLatestArray([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestArray([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    array-length v0, p0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "combiner is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 6
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 7
    new-instance p2, Li/c/b0/e/f/e/s;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/s;-><init>([Li/c/b0/b/a0;Ljava/lang/Iterable;Li/c/b0/d/o;IZ)V

    invoke-static {p2}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestArrayDelayError([Li/c/b0/b/a0;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Li/c/b0/b/v;->combineLatestArrayDelayError([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestArrayDelayError([Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 5
    array-length v0, p0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    :cond_0
    shl-int/lit8 v4, p2, 0x1

    .line 7
    new-instance p2, Li/c/b0/e/f/e/s;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/s;-><init>([Li/c/b0/b/a0;Ljava/lang/Iterable;Li/c/b0/d/o;IZ)V

    invoke-static {p2}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestDelayError(Ljava/lang/Iterable;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Li/c/b0/b/v;->combineLatestDelayError(Ljava/lang/Iterable;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestDelayError(Ljava/lang/Iterable;Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 5
    new-instance p2, Li/c/b0/e/f/e/s;

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/s;-><init>([Li/c/b0/b/a0;Ljava/lang/Iterable;Li/c/b0/d/o;IZ)V

    invoke-static {p2}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {p0, v0}, Li/c/b0/b/v;->concat(Li/c/b0/b/a0;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Li/c/b0/b/a0;I)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;I)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 4
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 5
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 6
    new-instance v0, Li/c/b0/e/f/e/t;

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v1

    sget-object v2, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    invoke-direct {v0, p0, v1, p1, v2}, Li/c/b0/e/f/e/t;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ILi/c/b0/e/k/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 7
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 9
    invoke-static {v0}, Li/c/b0/b/v;->concatArray([Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 10
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 12
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 13
    invoke-static {v0}, Li/c/b0/b/v;->concatArray([Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 14
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 15
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 16
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 17
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 18
    invoke-static {v0}, Li/c/b0/b/v;->concatArray([Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Ljava/lang/Iterable;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Li/c/b0/b/v;->concatMapDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArray([Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Li/c/b0/b/v;->wrap(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Li/c/b0/e/f/e/t;

    invoke-static {p0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v1

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v2

    sget-object v3, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    invoke-direct {v0, p0, v1, v2, v3}, Li/c/b0/e/f/e/t;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ILi/c/b0/e/k/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayDelayError([Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Li/c/b0/b/v;->wrap(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-static {p0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {p0}, Li/c/b0/b/v;->concatDelayError(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEager(II[Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    invoke-static {p2}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p2

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0, p1}, Li/c/b0/b/v;->concatMapEagerDelayError(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEager([Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    invoke-static {v0, v1, p0}, Li/c/b0/b/v;->concatArrayEager(II[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEagerDelayError(II[Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    invoke-static {p2}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p2

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p0, p1}, Li/c/b0/b/v;->concatMapEagerDelayError(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEagerDelayError([Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    invoke-static {v0, v1, p0}, Li/c/b0/b/v;->concatArrayEagerDelayError(II[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Li/c/b0/b/v;->concatDelayError(Li/c/b0/b/a0;IZ)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Li/c/b0/b/a0;IZ)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;IZ)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 4
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize is null"

    .line 5
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 6
    new-instance v0, Li/c/b0/e/f/e/t;

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v1

    if-eqz p2, :cond_0

    sget-object p2, Li/c/b0/e/k/i;->END:Li/c/b0/e/k/i;

    goto :goto_0

    :cond_0
    sget-object p2, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    :goto_0
    invoke-direct {v0, p0, v1, p1, p2}, Li/c/b0/e/f/e/t;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ILi/c/b0/e/k/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Ljava/lang/Iterable;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {p0}, Li/c/b0/b/v;->concatDelayError(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    invoke-static {p0, v0, v1}, Li/c/b0/b/v;->concatEager(Li/c/b0/b/a0;II)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Li/c/b0/b/a0;II)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;II)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Li/c/b0/b/v;->wrap(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Li/c/b0/b/v;->concatMapEager(Li/c/b0/d/o;II)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Ljava/lang/Iterable;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    invoke-static {p0, v0, v1}, Li/c/b0/b/v;->concatEager(Ljava/lang/Iterable;II)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Ljava/lang/Iterable;II)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;II)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Li/c/b0/b/v;->concatMapEagerDelayError(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concatEagerDelayError(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    invoke-static {p0, v0, v1}, Li/c/b0/b/v;->concatEagerDelayError(Li/c/b0/b/a0;II)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concatEagerDelayError(Li/c/b0/b/a0;II)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;II)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Li/c/b0/b/v;->wrap(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Li/c/b0/b/v;->concatMapEagerDelayError(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concatEagerDelayError(Ljava/lang/Iterable;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    invoke-static {p0, v0, v1}, Li/c/b0/b/v;->concatEagerDelayError(Ljava/lang/Iterable;II)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static concatEagerDelayError(Ljava/lang/Iterable;II)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;II)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Li/c/b0/b/v;->concatMapEagerDelayError(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static create(Li/c/b0/b/y;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/y<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/b0;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/b0;-><init>(Li/c/b0/b/y;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static defer(Li/c/b0/d/q;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/e0;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/e0;-><init>(Li/c/b0/d/q;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method private doOnEach(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/d/a;",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/n0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/n0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public static empty()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/f/e/s0;->f:Li/c/b0/b/v;

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public static error(Li/c/b0/d/q;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/t0;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/t0;-><init>(Li/c/b0/d/q;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/lang/Throwable;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "throwable is null"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Li/c/b0/e/b/a;->l(Ljava/lang/Object;)Li/c/b0/d/q;

    move-result-object p0

    invoke-static {p0}, Li/c/b0/b/v;->error(Li/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromAction(Li/c/b0/d/a;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "action is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/b1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/b1;-><init>(Li/c/b0/d/a;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fromArray([Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "items is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Li/c/b0/e/f/e/c1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/c1;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/d1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/d1;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromCompletable(Li/c/b0/b/i;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/i;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completableSource is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/e1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/e1;-><init>(Li/c/b0/b/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromCompletionStage(Ljava/util/concurrent/CompletionStage;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stage is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/d/e;

    invoke-direct {v0, p0}, Li/c/b0/e/d/e;-><init>(Ljava/util/concurrent/CompletionStage;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/f1;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Li/c/b0/e/f/e/f1;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/f1;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/f1;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/g1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/g1;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromMaybe(Li/c/b0/b/t;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/t<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "maybe is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/c/q;

    invoke-direct {v0, p0}, Li/c/b0/e/f/c/q;-><init>(Li/c/b0/b/t;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromOptional(Ljava/util/Optional;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Optional<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "optional is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Li/c/b0/b/c;->a:Li/c/b0/b/c;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Li/c/b0/b/b;->a:Li/c/b0/b/b;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/c/b0/b/v;

    return-object p0
.end method

.method public static fromPublisher(Lo/a/a;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/a/a<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "publisher is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/h1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/h1;-><init>(Lo/a/a;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromRunnable(Ljava/lang/Runnable;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/i1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/i1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromSingle(Li/c/b0/b/i0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/i0<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/f/v;

    invoke-direct {v0, p0}, Li/c/b0/e/f/f/v;-><init>(Li/c/b0/b/i0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/util/stream/Stream;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stream is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/d/f;

    invoke-direct {v0, p0}, Li/c/b0/e/d/f;-><init>(Ljava/util/stream/Stream;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static fromSupplier(Li/c/b0/d/q;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/j1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/j1;-><init>(Li/c/b0/d/q;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Li/c/b0/d/g;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/g<",
            "Li/c/b0/b/k<",
            "TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Li/c/b0/e/b/a;->r()Li/c/b0/d/q;

    move-result-object v0

    .line 3
    invoke-static {p0}, Li/c/b0/e/f/e/r1;->l(Li/c/b0/d/g;)Li/c/b0/d/c;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v1

    .line 4
    invoke-static {v0, p0, v1}, Li/c/b0/b/v;->generate(Li/c/b0/d/q;Li/c/b0/d/c;Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Li/c/b0/d/q;Li/c/b0/d/b;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "TS;>;",
            "Li/c/b0/d/b<",
            "TS;",
            "Li/c/b0/b/k<",
            "TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Li/c/b0/e/f/e/r1;->k(Li/c/b0/d/b;)Li/c/b0/d/c;

    move-result-object p1

    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Li/c/b0/b/v;->generate(Li/c/b0/d/q;Li/c/b0/d/c;Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Li/c/b0/d/q;Li/c/b0/d/b;Li/c/b0/d/g;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "TS;>;",
            "Li/c/b0/d/b<",
            "TS;",
            "Li/c/b0/b/k<",
            "TT;>;>;",
            "Li/c/b0/d/g<",
            "-TS;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Li/c/b0/e/f/e/r1;->k(Li/c/b0/d/b;)Li/c/b0/d/c;

    move-result-object p1

    invoke-static {p0, p1, p2}, Li/c/b0/b/v;->generate(Li/c/b0/d/q;Li/c/b0/d/c;Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Li/c/b0/d/q;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "TS;>;",
            "Li/c/b0/d/c<",
            "TS;",
            "Li/c/b0/b/k<",
            "TT;>;TS;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Li/c/b0/b/v;->generate(Li/c/b0/d/q;Li/c/b0/d/c;Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Li/c/b0/d/q;Li/c/b0/d/c;Li/c/b0/d/g;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "TS;>;",
            "Li/c/b0/d/c<",
            "TS;",
            "Li/c/b0/b/k<",
            "TT;>;TS;>;",
            "Li/c/b0/d/g<",
            "-TS;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialState is null"

    .line 10
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "generator is null"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposeState is null"

    .line 12
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    new-instance v0, Li/c/b0/e/f/e/l1;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/l1;-><init>(Li/c/b0/d/q;Li/c/b0/d/c;Li/c/b0/d/g;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Li/c/b0/b/v;->interval(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/f/e/s1;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v1, v0

    move-wide v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Li/c/b0/e/f/e/s1;-><init>(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Li/c/b0/b/v;->interval(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Li/c/b0/b/v;->interval(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static intervalRange(JJJJLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v9

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Li/c/b0/b/v;->intervalRange(JJJJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public static intervalRange(JJJJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    if-nez v6, :cond_0

    .line 2
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v9, v10}, Li/c/b0/b/v;->delay(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    add-long v6, p0, v0

    cmp-long v0, p0, v4

    if-lez v0, :cond_2

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "unit is null"

    .line 4
    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 5
    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v11, Li/c/b0/e/f/e/t1;

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-wide/from16 v0, p6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object v0, v11

    move-wide/from16 v1, p0

    move-wide v3, v6

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Li/c/b0/e/f/e/t1;-><init>(JJJJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-static {v11}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0

    .line 7
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static just(Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/v1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/v1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 5
    invoke-static {v0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 6
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 8
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 9
    invoke-static {v0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 10
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 12
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 13
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 14
    invoke-static {v0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 15
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 17
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 18
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 19
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    .line 20
    invoke-static {v0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 21
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 22
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 23
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 24
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 25
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 26
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    .line 27
    invoke-static {v0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 28
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 29
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 30
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 31
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 32
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 33
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 34
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    .line 35
    invoke-static {v0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 36
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 37
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 38
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 39
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 40
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 41
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 42
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 43
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    .line 44
    invoke-static {v0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 45
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 46
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 47
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 48
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 49
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 50
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 51
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 52
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    .line 53
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    .line 54
    invoke-static {v0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 55
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 56
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 57
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 58
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 59
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 60
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 61
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 62
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    .line 63
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item10 is null"

    .line 64
    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    const/16 p0, 0x9

    aput-object p9, v0, p0

    .line 65
    invoke-static {v0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 4
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/v0;

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v3

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    const/4 v4, 0x0

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/v0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ZII)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Li/c/b0/b/a0;I)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;I)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 6
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 7
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 8
    new-instance v0, Li/c/b0/e/f/e/v0;

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v3

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/v0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ZII)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 9
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 10
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 11
    invoke-static {v1}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 12
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 13
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 14
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 15
    invoke-static {v1}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 16
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 17
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 18
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 19
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    .line 20
    invoke-static {v1}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;I)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;II)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;II)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArray(II[Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-static {p2}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p2

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0, p1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArray([Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    invoke-static {p0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v0, v1, p0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArrayDelayError(II[Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-static {p2}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p2

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p0, p1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArrayDelayError([Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    invoke-static {p0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v1

    array-length p0, p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 4
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/v0;

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v3

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    const/4 v4, 0x1

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/v0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ZII)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Li/c/b0/b/a0;I)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;I)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 6
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 7
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 8
    new-instance v0, Li/c/b0/e/f/e/v0;

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v3

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/v0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ZII)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 9
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 10
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 11
    invoke-static {v1}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v1

    invoke-virtual {p1, v1, p0, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 12
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 13
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 14
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    .line 15
    invoke-static {v1}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 16
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 17
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 18
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 19
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    .line 20
    invoke-static {v1}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;Z)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;I)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;I)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;II)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;II)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static never()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/f/e/f2;->f:Li/c/b0/b/v;

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Li/c/b0/b/v<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v0, p0

    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 3
    new-instance v0, Li/c/b0/e/f/e/m2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/m2;-><init>(II)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rangeLong(JJ)Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Li/c/b0/b/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    .line 1
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, p2, v2

    if-nez v4, :cond_1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    :cond_1
    sub-long v2, p2, v2

    add-long/2addr v2, p0

    cmp-long v4, p0, v0

    if-lez v4, :cond_3

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_3
    :goto_0
    new-instance v0, Li/c/b0/e/f/e/n2;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/n2;-><init>(JJ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    .line 5
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "count >= 0 required but it was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sequenceEqual(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/b;->a()Li/c/b0/d/d;

    move-result-object v0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Li/c/b0/b/v;->sequenceEqual(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/d;I)Li/c/b0/b/e0;

    move-result-object p0

    return-object p0
.end method

.method public static sequenceEqual(Li/c/b0/b/a0;Li/c/b0/b/a0;I)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;I)",
            "Li/c/b0/b/e0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {}, Li/c/b0/e/b/b;->a()Li/c/b0/d/d;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Li/c/b0/b/v;->sequenceEqual(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/d;I)Li/c/b0/b/e0;

    move-result-object p0

    return-object p0
.end method

.method public static sequenceEqual(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/d;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/d/d<",
            "-TT;-TT;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Li/c/b0/b/v;->sequenceEqual(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/d;I)Li/c/b0/b/e0;

    move-result-object p0

    return-object p0
.end method

.method public static sequenceEqual(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/d;I)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/d/d<",
            "-TT;-TT;>;I)",
            "Li/c/b0/b/e0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    .line 5
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 6
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 7
    new-instance v0, Li/c/b0/e/f/e/f3;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/f3;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/d;I)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNext(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {p0, v0}, Li/c/b0/b/v;->switchOnNext(Li/c/b0/b/a0;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNext(Li/c/b0/b/a0;I)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;I)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Li/c/b0/e/f/e/q3;

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Li/c/b0/e/f/e/q3;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;IZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNextDelayError(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-static {p0, v0}, Li/c/b0/b/v;->switchOnNextDelayError(Li/c/b0/b/a0;I)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNextDelayError(Li/c/b0/b/a0;I)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;I)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Li/c/b0/e/f/e/q3;

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Li/c/b0/e/f/e/q3;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;IZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method private timeout0(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/a0;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/c4;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Li/c/b0/e/f/e/c4;-><init>(Li/c/b0/b/v;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private timeout0(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TU;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemTimeoutIndicator is null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/b4;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/b4;-><init>(Li/c/b0/b/v;Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Li/c/b0/b/v;->timer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/f/e/d4;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/d4;-><init>(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static unsafeCreate(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Li/c/b0/b/v;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Li/c/b0/e/f/e/k1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/k1;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Observable) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static using(Li/c/b0/d/q;Li/c/b0/d/o;Li/c/b0/d/g;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "+TD;>;",
            "Li/c/b0/d/o<",
            "-TD;+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;",
            "Li/c/b0/d/g<",
            "-TD;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Li/c/b0/b/v;->using(Li/c/b0/d/q;Li/c/b0/d/o;Li/c/b0/d/g;Z)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static using(Li/c/b0/d/q;Li/c/b0/d/o;Li/c/b0/d/g;Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "+TD;>;",
            "Li/c/b0/d/o<",
            "-TD;+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;",
            "Li/c/b0/d/g<",
            "-TD;>;Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resourceCleanup is null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/h4;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/h4;-><init>(Li/c/b0/d/q;Li/c/b0/d/o;Li/c/b0/d/g;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Li/c/b0/b/v;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Li/c/b0/b/v;

    invoke-static {p0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Li/c/b0/e/f/e/k1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/k1;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/n;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/b/a0<",
            "+TT5;>;",
            "Li/c/b0/b/a0<",
            "+TT6;>;",
            "Li/c/b0/b/a0<",
            "+TT7;>;",
            "Li/c/b0/b/a0<",
            "+TT8;>;",
            "Li/c/b0/b/a0<",
            "+TT9;>;",
            "Li/c/b0/d/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 65
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 66
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 67
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 68
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 69
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 70
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 71
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 72
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 73
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 74
    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    invoke-static {p9}, Li/c/b0/e/b/a;->B(Li/c/b0/d/n;)Li/c/b0/d/o;

    move-result-object p9

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    const/16 p0, 0x8

    aput-object p8, v1, p0

    invoke-static {p9, v2, v0, v1}, Li/c/b0/b/v;->zipArray(Li/c/b0/d/o;ZI[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/m;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/b/a0<",
            "+TT5;>;",
            "Li/c/b0/b/a0<",
            "+TT6;>;",
            "Li/c/b0/b/a0<",
            "+TT7;>;",
            "Li/c/b0/b/a0<",
            "+TT8;>;",
            "Li/c/b0/d/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 55
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 56
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 57
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 58
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 59
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 60
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 61
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 62
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 63
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-static {p8}, Li/c/b0/e/b/a;->A(Li/c/b0/d/m;)Li/c/b0/d/o;

    move-result-object p8

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {p8, v2, v0, v1}, Li/c/b0/b/v;->zipArray(Li/c/b0/d/o;ZI[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/l;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/b/a0<",
            "+TT5;>;",
            "Li/c/b0/b/a0<",
            "+TT6;>;",
            "Li/c/b0/b/a0<",
            "+TT7;>;",
            "Li/c/b0/d/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 46
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 47
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 48
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 49
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 50
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 51
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 52
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 53
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    invoke-static {p7}, Li/c/b0/e/b/a;->z(Li/c/b0/d/l;)Li/c/b0/d/o;

    move-result-object p7

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {p7, v2, v0, v1}, Li/c/b0/b/v;->zipArray(Li/c/b0/d/o;ZI[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/k;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/b/a0<",
            "+TT5;>;",
            "Li/c/b0/b/a0<",
            "+TT6;>;",
            "Li/c/b0/d/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 38
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 39
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 40
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 41
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 42
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 43
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 44
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    invoke-static {p6}, Li/c/b0/e/b/a;->y(Li/c/b0/d/k;)Li/c/b0/d/o;

    move-result-object p6

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {p6, v2, v0, v1}, Li/c/b0/b/v;->zipArray(Li/c/b0/d/o;ZI[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/j;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/b/a0<",
            "+TT5;>;",
            "Li/c/b0/d/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 31
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 32
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 33
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 34
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 35
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 36
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    invoke-static {p5}, Li/c/b0/e/b/a;->x(Li/c/b0/d/j;)Li/c/b0/d/o;

    move-result-object p5

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {p5, v2, v0, v1}, Li/c/b0/b/v;->zipArray(Li/c/b0/d/o;ZI[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/i;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/b/a0<",
            "+TT4;>;",
            "Li/c/b0/d/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 25
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 26
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 27
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 28
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 29
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    invoke-static {p4}, Li/c/b0/e/b/a;->w(Li/c/b0/d/i;)Li/c/b0/d/o;

    move-result-object p4

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v2, v0, v1}, Li/c/b0/b/v;->zipArray(Li/c/b0/d/o;ZI[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/h;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/b/a0<",
            "+TT3;>;",
            "Li/c/b0/d/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 20
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 21
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 22
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 23
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-static {p3}, Li/c/b0/e/b/a;->v(Li/c/b0/d/h;)Li/c/b0/d/o;

    move-result-object p3

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v2, v0, v1}, Li/c/b0/b/v;->zipArray(Li/c/b0/d/o;ZI[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/d/c<",
            "-TT1;-TT2;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 8
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {p2}, Li/c/b0/e/b/a;->u(Li/c/b0/d/c;)Li/c/b0/d/o;

    move-result-object p2

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v2, v0, v1}, Li/c/b0/b/v;->zipArray(Li/c/b0/d/o;ZI[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;Z)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/d/c<",
            "-TT1;-TT2;+TR;>;Z)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 12
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 13
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 14
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    invoke-static {p2}, Li/c/b0/e/b/a;->u(Li/c/b0/d/c;)Li/c/b0/d/o;

    move-result-object p2

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Li/c/b0/b/a0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, p3, v0, v1}, Li/c/b0/b/v;->zipArray(Li/c/b0/d/o;ZI[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;ZI)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT1;>;",
            "Li/c/b0/b/a0<",
            "+TT2;>;",
            "Li/c/b0/d/c<",
            "-TT1;-TT2;+TR;>;ZI)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 16
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 17
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 18
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    invoke-static {p2}, Li/c/b0/e/b/a;->u(Li/c/b0/d/c;)Li/c/b0/d/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, p3, p4, v0}, Li/c/b0/b/v;->zipArray(Li/c/b0/d/o;ZI[Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/lang/Iterable;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/p4;

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v5

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/p4;-><init>([Li/c/b0/b/a0;Ljava/lang/Iterable;Li/c/b0/d/o;IZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/lang/Iterable;Li/c/b0/d/o;ZI)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 5
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 6
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 7
    new-instance v0, Li/c/b0/e/f/e/p4;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/p4;-><init>([Li/c/b0/b/a0;Ljava/lang/Iterable;Li/c/b0/d/o;IZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zipArray(Li/c/b0/d/o;ZI[Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI[",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p3

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 4
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 5
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 6
    new-instance v0, Li/c/b0/e/f/e/p4;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/p4;-><init>([Li/c/b0/b/a0;Ljava/lang/Iterable;Li/c/b0/d/o;IZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final all(Li/c/b0/d/p;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-TT;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/g;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/g;-><init>(Li/c/b0/b/a0;Li/c/b0/d/p;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final ambWith(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Li/c/b0/b/v;->ambArray([Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final any(Li/c/b0/d/p;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-TT;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/j;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/j;-><init>(Li/c/b0/b/a0;Li/c/b0/d/p;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final blockingFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/e/e;

    invoke-direct {v0}, Li/c/b0/e/e/e;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    .line 3
    invoke-virtual {v0}, Li/c/b0/e/e/d;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final blockingFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Li/c/b0/e/e/e;

    invoke-direct {v0}, Li/c/b0/e/e/e;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    .line 8
    invoke-virtual {v0}, Li/c/b0/e/e/d;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final blockingForEach(Li/c/b0/d/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->blockingForEach(Li/c/b0/d/g;I)V

    return-void
.end method

.method public final blockingForEach(Li/c/b0/d/g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p2}, Li/c/b0/b/v;->blockingIterable(I)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Li/c/b0/d/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    check-cast p2, Li/c/b0/c/c;

    invoke-interface {p2}, Li/c/b0/c/c;->dispose()V

    .line 8
    invoke-static {p1}, Li/c/b0/e/k/j;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public final blockingIterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->blockingIterable(I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final blockingIterable(I)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    .line 2
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Li/c/b0/e/f/e/b;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/b;-><init>(Li/c/b0/b/a0;I)V

    return-object v0
.end method

.method public final blockingLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/e/f;

    invoke-direct {v0}, Li/c/b0/e/e/f;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    .line 3
    invoke-virtual {v0}, Li/c/b0/e/e/d;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final blockingLast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Li/c/b0/e/e/f;

    invoke-direct {v0}, Li/c/b0/e/e/f;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    .line 8
    invoke-virtual {v0}, Li/c/b0/e/e/d;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final blockingLatest()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/c;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/c;-><init>(Li/c/b0/b/a0;)V

    return-object v0
.end method

.method public final blockingMostRecent(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/d;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/d;-><init>(Li/c/b0/b/a0;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final blockingNext()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/e;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/e;-><init>(Li/c/b0/b/a0;)V

    return-object v0
.end method

.method public final blockingSingle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/b/v;->singleElement()Li/c/b0/b/p;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/p;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final blockingSingle(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Li/c/b0/b/v;->single(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/e0;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final blockingStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->blockingStream(I)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final blockingStream(I)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Li/c/b0/b/v;->blockingIterable(I)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    check-cast p1, Li/c/b0/c/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Li/c/b0/b/a;

    invoke-direct {v1, p1}, Li/c/b0/b/a;-><init>(Li/c/b0/c/c;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    return-object p1
.end method

.method public final blockingSubscribe()V
    .locals 0

    .line 1
    invoke-static {p0}, Li/c/b0/e/f/e/k;->a(Li/c/b0/b/a0;)V

    return-void
.end method

.method public final blockingSubscribe(Li/c/b0/b/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p0, p1}, Li/c/b0/e/f/e/k;->b(Li/c/b0/b/a0;Li/c/b0/b/c0;)V

    return-void
.end method

.method public final blockingSubscribe(Li/c/b0/d/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Li/c/b0/e/b/a;->e:Li/c/b0/d/g;

    sget-object v1, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-static {p0, p1, v0, v1}, Li/c/b0/e/f/e/k;->c(Li/c/b0/b/a0;Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)V

    return-void
.end method

.method public final blockingSubscribe(Li/c/b0/d/g;Li/c/b0/d/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-static {p0, p1, p2, v0}, Li/c/b0/e/f/e/k;->c(Li/c/b0/b/a0;Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)V

    return-void
.end method

.method public final blockingSubscribe(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/d/a;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1, p2, p3}, Li/c/b0/e/f/e/k;->c(Li/c/b0/b/a0;Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)V

    return-void
.end method

.method public final buffer(I)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1}, Li/c/b0/b/v;->buffer(II)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(II)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Li/c/b0/e/k/b;->asSupplier()Li/c/b0/d/q;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/v;->buffer(IILi/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(IILi/c/b0/d/q;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(II",
            "Li/c/b0/d/q<",
            "TU;>;)",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "count"

    .line 3
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "skip"

    .line 4
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "bufferSupplier is null"

    .line 5
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Li/c/b0/e/f/e/l;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/l;-><init>(Li/c/b0/b/a0;IILi/c/b0/d/q;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(ILi/c/b0/d/q;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(I",
            "Li/c/b0/d/q<",
            "TU;>;)",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p1, p2}, Li/c/b0/b/v;->buffer(IILi/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 8
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v6

    invoke-static {}, Li/c/b0/e/k/b;->asSupplier()Li/c/b0/d/q;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Li/c/b0/b/v;->buffer(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 9
    invoke-static {}, Li/c/b0/e/k/b;->asSupplier()Li/c/b0/d/q;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Li/c/b0/b/v;->buffer(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/d/q;)Li/c/b0/b/v;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Li/c/b0/d/q<",
            "TU;>;)",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    .line 10
    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    .line 11
    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p7

    .line 12
    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    new-instance v0, Li/c/b0/e/f/e/o;

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v11}, Li/c/b0/e/f/e/o;-><init>(Li/c/b0/b/a0;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/d/q;IZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 14
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v4

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->buffer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;I)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 15
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->buffer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 22
    invoke-static {}, Li/c/b0/e/k/b;->asSupplier()Li/c/b0/d/q;

    move-result-object v6

    const v5, 0x7fffffff

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Li/c/b0/b/v;->buffer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ILi/c/b0/d/q;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;I)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "I)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 16
    invoke-static {}, Li/c/b0/e/k/b;->asSupplier()Li/c/b0/d/q;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Li/c/b0/b/v;->buffer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ILi/c/b0/d/q;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ILi/c/b0/d/q;Z)Li/c/b0/b/v;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "I",
            "Li/c/b0/d/q<",
            "TU;>;Z)",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object v7, p3

    .line 17
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    .line 18
    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p6

    .line 19
    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move/from16 v10, p5

    .line 20
    invoke-static {v10, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 21
    new-instance v0, Li/c/b0/e/f/e/o;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Li/c/b0/e/f/e/o;-><init>(Li/c/b0/b/a0;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/d/q;IZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TB;>;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 28
    invoke-static {}, Li/c/b0/e/k/b;->asSupplier()Li/c/b0/d/q;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->buffer(Li/c/b0/b/a0;Li/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Li/c/b0/b/a0;I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TB;>;I)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    .line 29
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 30
    invoke-static {p2}, Li/c/b0/e/b/a;->e(I)Li/c/b0/d/q;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Li/c/b0/b/v;->buffer(Li/c/b0/b/a0;Li/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Li/c/b0/b/a0;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TTOpening;>;",
            "Li/c/b0/d/o<",
            "-TTOpening;+",
            "Li/c/b0/b/a0<",
            "+TTClosing;>;>;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 23
    invoke-static {}, Li/c/b0/e/k/b;->asSupplier()Li/c/b0/d/q;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/v;->buffer(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/q;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Li/c/b0/b/a0<",
            "+TTOpening;>;",
            "Li/c/b0/d/o<",
            "-TTOpening;+",
            "Li/c/b0/b/a0<",
            "+TTClosing;>;>;",
            "Li/c/b0/d/q<",
            "TU;>;)",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    .line 24
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    .line 25
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 26
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    new-instance v0, Li/c/b0/e/f/e/m;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/m;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/q;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Li/c/b0/b/a0;Li/c/b0/d/q;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Li/c/b0/b/a0<",
            "TB;>;",
            "Li/c/b0/d/q<",
            "TU;>;)",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundaryIndicator is null"

    .line 31
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 32
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    new-instance v0, Li/c/b0/e/f/e/n;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/n;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/q;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final cache()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Li/c/b0/b/v;->cacheWithInitialCapacity(I)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final cacheWithInitialCapacity(I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    .line 1
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Li/c/b0/e/f/e/p;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/p;-><init>(Li/c/b0/b/v;I)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final cast(Ljava/lang/Class;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/b0/e/b/a;->d(Ljava/lang/Class;)Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final collect(Li/c/b0/d/q;Li/c/b0/d/b;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "+TU;>;",
            "Li/c/b0/d/b<",
            "-TU;-TT;>;)",
            "Li/c/b0/b/e0<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialItemSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/r;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/r;-><init>(Li/c/b0/b/a0;Li/c/b0/d/q;Li/c/b0/d/b;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final collect(Ljava/util/stream/Collector;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TR;>;)",
            "Li/c/b0/b/e0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "collector is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/d/b;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/d/b;-><init>(Li/c/b0/b/v;Ljava/util/stream/Collector;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final collectInto(Ljava/lang/Object;Li/c/b0/d/b;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Li/c/b0/d/b<",
            "-TU;-TT;>;)",
            "Li/c/b0/b/e0<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/b0/e/b/a;->l(Ljava/lang/Object;)Li/c/b0/d/q;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Li/c/b0/b/v;->collect(Li/c/b0/d/q;Li/c/b0/d/b;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final compose(Li/c/b0/b/b0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/b0<",
            "-TT;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li/c/b0/b/b0;

    invoke-interface {p1, p0}, Li/c/b0/b/b0;->a(Li/c/b0/b/v;)Li/c/b0/b/a0;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->wrap(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->concatMap(Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Li/c/b0/e/c/i;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Li/c/b0/e/c/i;

    invoke-interface {p2}, Li/c/b0/e/c/i;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {p2, p1}, Li/c/b0/e/f/e/b3;->a(Ljava/lang/Object;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance v0, Li/c/b0/e/f/e/t;

    sget-object v1, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    invoke-direct {v0, p0, p1, p2, v1}, Li/c/b0/e/f/e/t;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ILi/c/b0/e/k/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Li/c/b0/d/o;ILi/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;I",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 10
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    .line 11
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    new-instance v0, Li/c/b0/e/f/e/v;

    sget-object v5, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/v;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ILi/c/b0/e/k/i;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->concatMapCompletable(Li/c/b0/d/o;I)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletable(Li/c/b0/d/o;I)Li/c/b0/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;I)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 3
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Li/c/b0/e/f/d/b;

    sget-object v1, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    invoke-direct {v0, p0, p1, v1, p2}, Li/c/b0/e/f/d/b;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;Li/c/b0/e/k/i;I)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletableDelayError(Li/c/b0/d/o;)Li/c/b0/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Li/c/b0/b/v;->concatMapCompletableDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletableDelayError(Li/c/b0/d/o;Z)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;Z)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/v;->concatMapCompletableDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletableDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;ZI)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 5
    new-instance v0, Li/c/b0/e/f/d/b;

    if-eqz p2, :cond_0

    sget-object p2, Li/c/b0/e/k/i;->END:Li/c/b0/e/k/i;

    goto :goto_0

    :cond_0
    sget-object p2, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/d/b;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;Li/c/b0/e/k/i;I)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapDelayError(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Li/c/b0/b/v;->concatMapDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;ZI)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Li/c/b0/e/c/i;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Li/c/b0/e/c/i;

    invoke-interface {p2}, Li/c/b0/e/c/i;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {p2, p1}, Li/c/b0/e/f/e/b3;->a(Ljava/lang/Object;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance v0, Li/c/b0/e/f/e/t;

    if-eqz p2, :cond_2

    sget-object p2, Li/c/b0/e/k/i;->END:Li/c/b0/e/k/i;

    goto :goto_0

    :cond_2
    sget-object p2, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    :goto_0
    invoke-direct {v0, p0, p1, p3, p2}, Li/c/b0/e/f/e/t;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ILi/c/b0/e/k/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapDelayError(Li/c/b0/d/o;ZILi/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;ZI",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 10
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    .line 11
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    new-instance v0, Li/c/b0/e/f/e/v;

    if-eqz p2, :cond_0

    sget-object p2, Li/c/b0/e/k/i;->END:Li/c/b0/e/k/i;

    goto :goto_0

    :cond_0
    sget-object p2, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    :goto_0
    move-object v5, p2

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/v;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ILi/c/b0/e/k/i;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEager(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v1, v0}, Li/c/b0/b/v;->concatMapEager(Li/c/b0/d/o;II)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEager(Li/c/b0/d/o;II)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;II)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 3
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 5
    new-instance v0, Li/c/b0/e/f/e/u;

    sget-object v4, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/u;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/e/k/i;II)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEagerDelayError(Li/c/b0/d/o;Z)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;Z)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, p2, v1, v0}, Li/c/b0/b/v;->concatMapEagerDelayError(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEagerDelayError(Li/c/b0/d/o;ZII)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;ZII)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 3
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p4, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 5
    new-instance v0, Li/c/b0/e/f/e/u;

    if-eqz p2, :cond_0

    sget-object p2, Li/c/b0/e/k/i;->END:Li/c/b0/e/k/i;

    goto :goto_0

    :cond_0
    sget-object p2, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    :goto_0
    move-object v4, p2

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/u;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/e/k/i;II)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapIterable(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/a1;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/a1;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybe(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->concatMapMaybe(Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybe(Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Li/c/b0/e/f/d/c;

    sget-object v1, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    invoke-direct {v0, p0, p1, v1, p2}, Li/c/b0/e/f/d/c;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;Li/c/b0/e/k/i;I)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybeDelayError(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Li/c/b0/b/v;->concatMapMaybeDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybeDelayError(Li/c/b0/d/o;Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;Z)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/v;->concatMapMaybeDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybeDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;ZI)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 5
    new-instance v0, Li/c/b0/e/f/d/c;

    if-eqz p2, :cond_0

    sget-object p2, Li/c/b0/e/k/i;->END:Li/c/b0/e/k/i;

    goto :goto_0

    :cond_0
    sget-object p2, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/d/c;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;Li/c/b0/e/k/i;I)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingle(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->concatMapSingle(Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingle(Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Li/c/b0/e/f/d/d;

    sget-object v1, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    invoke-direct {v0, p0, p1, v1, p2}, Li/c/b0/e/f/d/d;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/e/k/i;I)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingleDelayError(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Li/c/b0/b/v;->concatMapSingleDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingleDelayError(Li/c/b0/d/o;Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;Z)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/v;->concatMapSingleDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingleDelayError(Li/c/b0/d/o;ZI)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;ZI)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 5
    new-instance v0, Li/c/b0/e/f/d/d;

    if-eqz p2, :cond_0

    sget-object p2, Li/c/b0/e/k/i;->END:Li/c/b0/e/k/i;

    goto :goto_0

    :cond_0
    sget-object p2, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/d/d;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/e/k/i;I)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapStream(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/b/v;->flatMapStream(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Li/c/b0/b/v;->concat(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Li/c/b0/b/i0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/f/e/y;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/y;-><init>(Li/c/b0/b/v;Li/c/b0/b/i0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Li/c/b0/b/i;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Li/c/b0/e/f/e/w;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/w;-><init>(Li/c/b0/b/v;Li/c/b0/b/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Li/c/b0/b/t;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/t<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Li/c/b0/e/f/e/x;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/x;-><init>(Li/c/b0/b/v;Li/c/b0/b/t;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Li/c/b0/b/e0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/b0/e/b/a;->h(Ljava/lang/Object;)Li/c/b0/d/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->any(Li/c/b0/d/p;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final count()Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/a0;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/a0;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Li/c/b0/b/v;->debounce(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Li/c/b0/e/f/e/d0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/d0;-><init>(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final debounce(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TU;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "debounceIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/c0;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/c0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final defaultIfEmpty(Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->switchIfEmpty(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->delay(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 5
    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->delay(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 6
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 7
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Li/c/b0/e/f/e/f0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Li/c/b0/e/f/e/f0;-><init>(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Z)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->delay(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final delay(Li/c/b0/b/a0;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TU;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Li/c/b0/b/v;->delaySubscription(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->delay(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final delay(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TU;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemDelayIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/b0/e/f/e/r1;->c(Li/c/b0/d/o;)Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Li/c/b0/b/v;->delaySubscription(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p1, p2, p3, p4}, Li/c/b0/b/v;->timer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->delaySubscription(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TU;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/g0;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/g0;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final dematerialize(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;",
            "Li/c/b0/b/u<",
            "TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/h0;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/h0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final distinct()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    invoke-static {}, Li/c/b0/e/b/a;->f()Li/c/b0/d/q;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li/c/b0/b/v;->distinct(Li/c/b0/d/o;Li/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final distinct(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;TK;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Li/c/b0/e/b/a;->f()Li/c/b0/d/q;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->distinct(Li/c/b0/d/o;Li/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final distinct(Li/c/b0/d/o;Li/c/b0/d/q;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;TK;>;",
            "Li/c/b0/d/q<",
            "+",
            "Ljava/util/Collection<",
            "-TK;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionSupplier is null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/j0;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/j0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/q;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final distinctUntilChanged()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->distinctUntilChanged(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged(Li/c/b0/d/d;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/d<",
            "-TT;-TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparer is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/k0;

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Li/c/b0/e/f/e/k0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/d;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final distinctUntilChanged(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;TK;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/k0;

    invoke-static {}, Li/c/b0/e/b/b;->a()Li/c/b0/d/d;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Li/c/b0/e/f/e/k0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/d;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterNext(Li/c/b0/d/g;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/l0;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/l0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/g;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterTerminate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v0

    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v1

    sget-object v2, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-direct {p0, v0, v1, v2, p1}, Li/c/b0/b/v;->doOnEach(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doFinally(Li/c/b0/d/a;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/m0;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/m0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/a;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doOnComplete(Li/c/b0/d/a;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v0

    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v1

    sget-object v2, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-direct {p0, v0, v1, p1, v2}, Li/c/b0/b/v;->doOnEach(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doOnDispose(Li/c/b0/d/a;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Li/c/b0/b/v;->doOnLifecycle(Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEach(Li/c/b0/b/c0;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Li/c/b0/e/f/e/r1;->f(Li/c/b0/b/c0;)Li/c/b0/d/g;

    move-result-object v0

    .line 13
    invoke-static {p1}, Li/c/b0/e/f/e/r1;->e(Li/c/b0/b/c0;)Li/c/b0/d/g;

    move-result-object v1

    .line 14
    invoke-static {p1}, Li/c/b0/e/f/e/r1;->d(Li/c/b0/b/c0;)Li/c/b0/d/a;

    move-result-object p1

    sget-object v2, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    .line 15
    invoke-direct {p0, v0, v1, p1, v2}, Li/c/b0/b/v;->doOnEach(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEach(Li/c/b0/d/g;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/b/u<",
            "TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNotification is null"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Li/c/b0/e/b/a;->q(Li/c/b0/d/g;)Li/c/b0/d/g;

    move-result-object v0

    .line 8
    invoke-static {p1}, Li/c/b0/e/b/a;->p(Li/c/b0/d/g;)Li/c/b0/d/g;

    move-result-object v1

    .line 9
    invoke-static {p1}, Li/c/b0/e/b/a;->o(Li/c/b0/d/g;)Li/c/b0/d/a;

    move-result-object p1

    sget-object v2, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    .line 10
    invoke-direct {p0, v0, v1, p1, v2}, Li/c/b0/b/v;->doOnEach(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doOnError(Li/c/b0/d/g;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v0

    sget-object v1, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-direct {p0, v0, p1, v1, v1}, Li/c/b0/b/v;->doOnEach(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doOnLifecycle(Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/o0;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/o0;-><init>(Li/c/b0/b/v;Li/c/b0/d/g;Li/c/b0/d/a;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doOnNext(Li/c/b0/d/g;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v0

    sget-object v1, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-direct {p0, p1, v0, v1, v1}, Li/c/b0/b/v;->doOnEach(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSubscribe(Li/c/b0/d/g;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->doOnLifecycle(Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final doOnTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v0

    .line 3
    invoke-static {p1}, Li/c/b0/e/b/a;->a(Li/c/b0/d/a;)Li/c/b0/d/g;

    move-result-object v1

    sget-object v2, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    .line 4
    invoke-direct {p0, v0, v1, p1, v2}, Li/c/b0/b/v;->doOnEach(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final elementAt(JLjava/lang/Object;)Li/c/b0/b/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "defaultItem is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/f/e/r0;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/r0;-><init>(Li/c/b0/b/a0;JLjava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final elementAt(J)Li/c/b0/b/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Li/c/b0/e/f/e/q0;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/q0;-><init>(Li/c/b0/b/a0;J)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final elementAtOrError(J)Li/c/b0/b/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Li/c/b0/e/f/e/r0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Li/c/b0/e/f/e/r0;-><init>(Li/c/b0/b/a0;JLjava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final filter(Li/c/b0/d/p;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/u0;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/u0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/p;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final first(Ljava/lang/Object;)Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Li/c/b0/b/v;->elementAt(JLjava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final firstElement()Li/c/b0/b/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Li/c/b0/b/v;->elementAt(J)Li/c/b0/b/p;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrError()Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Li/c/b0/b/v;->elementAtOrError(J)Li/c/b0/b/e0;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrErrorStage()Ljava/util/concurrent/CompletionStage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/d/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/e/d/c;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribeWith(Li/c/b0/b/c0;)Li/c/b0/b/c0;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    return-object v0
.end method

.method public final firstStage(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/d/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Li/c/b0/e/d/c;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribeWith(Li/c/b0/b/c0;)Li/c/b0/b/c0;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletionStage;

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 20
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 21
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v4

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;Li/c/b0/d/c;ZII)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;Li/c/b0/d/c;I)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 27
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;Li/c/b0/d/c;ZII)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;Li/c/b0/d/c;Z)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;Z)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 22
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v4

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;Li/c/b0/d/c;ZII)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;Li/c/b0/d/c;ZI)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;ZI)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 23
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;Li/c/b0/d/c;ZII)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;Li/c/b0/d/c;ZII)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;ZII)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 24
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 25
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-static {p1, p2}, Li/c/b0/e/f/e/r1;->b(Li/c/b0/d/o;Li/c/b0/d/c;)Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/q;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;",
            "Li/c/b0/d/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;",
            "Li/c/b0/d/q<",
            "+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    .line 12
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 13
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 14
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    new-instance v0, Li/c/b0/e/f/e/a2;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/a2;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/q;)V

    invoke-static {v0}, Li/c/b0/b/v;->merge(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/q;I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;",
            "Li/c/b0/d/o<",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;",
            "Li/c/b0/d/q<",
            "+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 17
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 18
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    new-instance v0, Li/c/b0/e/f/e/a2;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/a2;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/q;)V

    invoke-static {v0, p4}, Li/c/b0/b/v;->merge(Li/c/b0/b/a0;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;Z)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;ZI)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;ZI)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;ZII)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Li/c/b0/d/o;ZII)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;ZII)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 5
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 6
    invoke-static {p4, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 7
    instance-of v0, p0, Li/c/b0/e/c/i;

    if-eqz v0, :cond_1

    .line 8
    move-object p2, p0

    check-cast p2, Li/c/b0/e/c/i;

    invoke-interface {p2}, Li/c/b0/e/c/i;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 9
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-static {p2, p1}, Li/c/b0/e/f/e/b3;->a(Ljava/lang/Object;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    new-instance v6, Li/c/b0/e/f/e/v0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/v0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;ZII)V

    invoke-static {v6}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->flatMapCompletable(Li/c/b0/d/o;Z)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Li/c/b0/d/o;Z)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;Z)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/x0;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/x0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapIterable(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/a1;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/a1;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapIterable(Li/c/b0/d/o;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TV;>;)",
            "Li/c/b0/b/v<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Li/c/b0/e/f/e/r1;->a(Li/c/b0/d/o;)Li/c/b0/d/o;

    move-result-object v2

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v5

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;Li/c/b0/d/c;ZII)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapMaybe(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->flatMapMaybe(Li/c/b0/d/o;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapMaybe(Li/c/b0/d/o;Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;Z)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/y0;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/y0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->flatMapSingle(Li/c/b0/d/o;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Li/c/b0/d/o;Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;Z)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/z0;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/z0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapStream(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/d/d;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/d/d;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final forEach(Li/c/b0/d/g;)Li/c/b0/c/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;)",
            "Li/c/b0/c/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final forEachWhile(Li/c/b0/d/p;)Li/c/b0/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-TT;>;)",
            "Li/c/b0/c/c;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/b/a;->e:Li/c/b0/d/g;

    sget-object v1, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-virtual {p0, p1, v0, v1}, Li/c/b0/b/v;->forEachWhile(Li/c/b0/d/p;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final forEachWhile(Li/c/b0/d/p;Li/c/b0/d/g;)Li/c/b0/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/c/c;"
        }
    .end annotation

    .line 2
    sget-object v0, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/v;->forEachWhile(Li/c/b0/d/p;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final forEachWhile(Li/c/b0/d/p;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/c/c;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 5
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Li/c/b0/e/e/n;

    invoke-direct {v0, p1, p2, p3}, Li/c/b0/e/e/n;-><init>(Li/c/b0/d/p;Li/c/b0/d/g;Li/c/b0/d/a;)V

    .line 7
    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    return-object v0
.end method

.method public final groupBy(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;)",
            "Li/c/b0/b/v<",
            "Li/c/b0/f/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Li/c/b0/b/v;->groupBy(Li/c/b0/d/o;Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Li/c/b0/d/o;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;",
            "Li/c/b0/d/o<",
            "-TT;+TV;>;)",
            "Li/c/b0/b/v<",
            "Li/c/b0/f/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Li/c/b0/b/v;->groupBy(Li/c/b0/d/o;Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Li/c/b0/d/o;Li/c/b0/d/o;Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;",
            "Li/c/b0/d/o<",
            "-TT;+TV;>;Z)",
            "Li/c/b0/b/v<",
            "Li/c/b0/f/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Li/c/b0/b/v;->groupBy(Li/c/b0/d/o;Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Li/c/b0/d/o;Li/c/b0/d/o;ZI)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;",
            "Li/c/b0/d/o<",
            "-TT;+TV;>;ZI)",
            "Li/c/b0/b/v<",
            "Li/c/b0/f/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 6
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 7
    invoke-static {p4, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 8
    new-instance v0, Li/c/b0/e/f/e/m1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/m1;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/o;IZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Li/c/b0/d/o;Z)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;Z)",
            "Li/c/b0/b/v<",
            "Li/c/b0/f/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Li/c/b0/b/v;->groupBy(Li/c/b0/d/o;Li/c/b0/d/o;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final groupJoin(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TTRight;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Li/c/b0/d/o<",
            "-TTRight;+",
            "Li/c/b0/b/a0<",
            "TTRightEnd;>;>;",
            "Li/c/b0/d/c<",
            "-TT;-",
            "Li/c/b0/b/v<",
            "TTRight;>;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/n1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/n1;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/c;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final hide()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/o1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/o1;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreElements()Li/c/b0/b/e;
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/f/e/q1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/q1;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->b()Li/c/b0/d/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->all(Li/c/b0/d/p;)Li/c/b0/b/e0;

    move-result-object v0

    return-object v0
.end method

.method public final join(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TTRight;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Li/c/b0/d/o<",
            "-TTRight;+",
            "Li/c/b0/b/a0<",
            "TTRightEnd;>;>;",
            "Li/c/b0/d/c<",
            "-TT;-TTRight;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/u1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/u1;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/c;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final last(Ljava/lang/Object;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/x1;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/x1;-><init>(Li/c/b0/b/a0;Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final lastElement()Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/w1;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/w1;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrError()Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/x1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li/c/b0/e/f/e/x1;-><init>(Li/c/b0/b/a0;Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrErrorStage()Ljava/util/concurrent/CompletionStage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/d/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/e/d/g;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribeWith(Li/c/b0/b/c0;)Li/c/b0/b/c0;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    return-object v0
.end method

.method public final lastStage(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/d/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Li/c/b0/e/d/g;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribeWith(Li/c/b0/b/c0;)Li/c/b0/b/c0;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletionStage;

    return-object p1
.end method

.method public final lift(Li/c/b0/b/z;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/z<",
            "+TR;-TT;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lifter is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/y1;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/y1;-><init>(Li/c/b0/b/a0;Li/c/b0/b/z;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final map(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/z1;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/z1;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final mapOptional(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;",
            "Ljava/util/Optional<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/d/h;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/d/h;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final materialize()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/u<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/b2;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/b2;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Li/c/b0/b/v;->merge(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Li/c/b0/b/i0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/f/e/e2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/e2;-><init>(Li/c/b0/b/v;Li/c/b0/b/i0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Li/c/b0/b/i;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Li/c/b0/e/f/e/c2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/c2;-><init>(Li/c/b0/b/v;Li/c/b0/b/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Li/c/b0/b/t;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/t<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Li/c/b0/e/f/e/d2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/d2;-><init>(Li/c/b0/b/v;Li/c/b0/b/t;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Li/c/b0/b/d0;Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/d0;",
            "Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Li/c/b0/b/d0;ZI)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/d0;",
            "ZI)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 5
    new-instance v0, Li/c/b0/e/f/e/g2;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/g2;-><init>(Li/c/b0/b/a0;Li/c/b0/b/d0;ZI)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final ofType(Ljava/lang/Class;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Li/c/b0/b/v<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/b0/e/b/a;->j(Ljava/lang/Class;)Li/c/b0/d/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/c/b0/b/v;->cast(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorComplete()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->c()Li/c/b0/d/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->onErrorComplete(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete(Li/c/b0/d/p;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/h2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/h2;-><init>(Li/c/b0/b/a0;Li/c/b0/d/p;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallbackSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/i2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/i2;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeWith(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/b0/e/b/a;->k(Ljava/lang/Object;)Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->onErrorResumeNext(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturn(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/j2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/j2;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturnItem(Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/b0/e/b/a;->k(Ljava/lang/Object;)Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->onErrorReturn(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final onTerminateDetach()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/i0;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/i0;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final publish(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/l2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/l2;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final publish()Li/c/b0/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/k2;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/k2;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->q(Li/c/b0/f/a;)Li/c/b0/f/a;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Li/c/b0/d/c;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Li/c/b0/d/c<",
            "TR;-TT;TR;>;)",
            "Li/c/b0/b/e0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seed is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/p2;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/p2;-><init>(Li/c/b0/b/a0;Ljava/lang/Object;Li/c/b0/d/c;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(Li/c/b0/d/c;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/c<",
            "TT;TT;TT;>;)",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reducer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/o2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/o2;-><init>(Li/c/b0/b/a0;Li/c/b0/d/c;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p1

    return-object p1
.end method

.method public final reduceWith(Li/c/b0/d/q;Li/c/b0/d/c;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "TR;>;",
            "Li/c/b0/d/c<",
            "TR;-TT;TR;>;)",
            "Li/c/b0/b/e0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/q2;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/q2;-><init>(Li/c/b0/b/a0;Li/c/b0/d/q;Li/c/b0/d/c;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final repeat()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Li/c/b0/b/v;->repeat(J)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Li/c/b0/e/f/e/s2;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/s2;-><init>(Li/c/b0/b/v;J)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final repeatUntil(Li/c/b0/d/e;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/e;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/t2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/t2;-><init>(Li/c/b0/b/v;Li/c/b0/d/e;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final repeatWhen(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "Ljava/lang/Object;",
            ">;+",
            "Li/c/b0/b/a0<",
            "*>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/u2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/u2;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Li/c/b0/e/f/e/r1;->g(Li/c/b0/b/v;)Li/c/b0/d/q;

    move-result-object v0

    invoke-static {v0, p1}, Li/c/b0/e/f/e/v2;->i(Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 5
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p2, v0}, Li/c/b0/e/f/e/r1;->i(Li/c/b0/b/v;IZ)Li/c/b0/d/q;

    move-result-object p2

    invoke-static {p2, p1}, Li/c/b0/e/f/e/v2;->i(Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Li/c/b0/d/o;IJLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 10
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/v;->replay(Li/c/b0/d/o;IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Li/c/b0/d/o;IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 12
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 13
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 14
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 15
    invoke-static/range {v1 .. v7}, Li/c/b0/e/f/e/r1;->h(Li/c/b0/b/v;IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/d/q;

    move-result-object p2

    .line 16
    invoke-static {p2, p1}, Li/c/b0/e/f/e/v2;->i(Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Li/c/b0/d/o;IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 17
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 18
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 19
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 20
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 21
    invoke-static/range {v0 .. v6}, Li/c/b0/e/f/e/r1;->h(Li/c/b0/b/v;IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/d/q;

    move-result-object p2

    .line 22
    invoke-static {p2, p1}, Li/c/b0/e/f/e/v2;->i(Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Li/c/b0/d/o;IZ)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;IZ)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 8
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 9
    invoke-static {p0, p2, p3}, Li/c/b0/e/f/e/r1;->i(Li/c/b0/b/v;IZ)Li/c/b0/d/q;

    move-result-object p2

    invoke-static {p2, p1}, Li/c/b0/e/f/e/v2;->i(Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Li/c/b0/d/o;JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 23
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->replay(Li/c/b0/d/o;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Li/c/b0/d/o;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 24
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 25
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 26
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 27
    invoke-static/range {v1 .. v6}, Li/c/b0/e/f/e/r1;->j(Li/c/b0/b/v;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/d/q;

    move-result-object p2

    invoke-static {p2, p1}, Li/c/b0/e/f/e/v2;->i(Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Li/c/b0/d/o;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;+",
            "Li/c/b0/b/a0<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 28
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 29
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 30
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 31
    invoke-static/range {v0 .. v5}, Li/c/b0/e/f/e/r1;->j(Li/c/b0/b/v;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/d/q;

    move-result-object p2

    invoke-static {p2, p1}, Li/c/b0/e/f/e/v2;->i(Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final replay()Li/c/b0/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Li/c/b0/e/f/e/v2;->h(Li/c/b0/b/a0;)Li/c/b0/f/a;

    move-result-object v0

    return-object v0
.end method

.method public final replay(I)Li/c/b0/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 32
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, p1, v0}, Li/c/b0/e/f/e/v2;->d(Li/c/b0/b/a0;IZ)Li/c/b0/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;)Li/c/b0/f/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 36
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->replay(IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/f/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 37
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 38
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 39
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p1

    .line 40
    invoke-static/range {v1 .. v7}, Li/c/b0/e/f/e/v2;->e(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;IZ)Li/c/b0/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/f/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 41
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 42
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 43
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p1

    move v6, p6

    .line 44
    invoke-static/range {v0 .. v6}, Li/c/b0/e/f/e/v2;->e(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;IZ)Li/c/b0/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(IZ)Li/c/b0/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 34
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 35
    invoke-static {p0, p1, p2}, Li/c/b0/e/f/e/v2;->d(Li/c/b0/b/a0;IZ)Li/c/b0/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;)Li/c/b0/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 45
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Li/c/b0/b/v;->replay(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/f/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 46
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 47
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 48
    invoke-static/range {v1 .. v6}, Li/c/b0/e/f/e/v2;->f(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 49
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 50
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    invoke-static/range {p0 .. p5}, Li/c/b0/e/f/e/v2;->f(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final retry()Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->c()Li/c/b0/d/p;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2, v0}, Li/c/b0/b/v;->retry(JLi/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Li/c/b0/e/b/a;->c()Li/c/b0/d/p;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/v;->retry(JLi/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final retry(JLi/c/b0/d/p;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "predicate is null"

    .line 5
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Li/c/b0/e/f/e/x2;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/x2;-><init>(Li/c/b0/b/v;JLi/c/b0/d/p;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "times >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final retry(Li/c/b0/d/d;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/w2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/w2;-><init>(Li/c/b0/b/v;Li/c/b0/d/d;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Li/c/b0/d/p;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Li/c/b0/b/v;->retry(JLi/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final retryUntil(Li/c/b0/d/e;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/e;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/b0/e/b/a;->s(Li/c/b0/d/e;)Li/c/b0/d/p;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Li/c/b0/b/v;->retry(JLi/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final retryWhen(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/v<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Li/c/b0/b/a0<",
            "*>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/y2;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/y2;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final safeSubscribe(Li/c/b0/b/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Li/c/b0/g/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Li/c/b0/g/e;

    invoke-direct {v0, p1}, Li/c/b0/g/e;-><init>(Li/c/b0/b/c0;)V

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    :goto_0
    return-void
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Li/c/b0/b/v;->sample(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/z2;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Li/c/b0/e/f/e/z2;-><init>(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 6
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 7
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Li/c/b0/e/f/e/z2;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Li/c/b0/e/f/e/z2;-><init>(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Z)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->sample(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final sample(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TU;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    new-instance v0, Li/c/b0/e/f/e/a3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Li/c/b0/e/f/e/a3;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final sample(Li/c/b0/b/a0;Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TU;>;Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    new-instance v0, Li/c/b0/e/f/e/a3;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/a3;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final scan(Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/c<",
            "TT;TT;TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "accumulator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/c3;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/c3;-><init>(Li/c/b0/b/a0;Li/c/b0/d/c;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final scan(Ljava/lang/Object;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Li/c/b0/d/c<",
            "TR;-TT;TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Li/c/b0/e/b/a;->l(Ljava/lang/Object;)Li/c/b0/d/q;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Li/c/b0/b/v;->scanWith(Li/c/b0/d/q;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final scanWith(Li/c/b0/d/q;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "TR;>;",
            "Li/c/b0/d/c<",
            "TR;-TT;TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "accumulator is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/d3;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/d3;-><init>(Li/c/b0/b/a0;Li/c/b0/d/q;Li/c/b0/d/c;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final serialize()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/g3;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/g3;-><init>(Li/c/b0/b/v;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final share()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/b/v;->publish()Li/c/b0/f/a;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/f/a;->b()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final single(Ljava/lang/Object;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/i3;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/i3;-><init>(Li/c/b0/b/a0;Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final singleElement()Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/h3;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/h3;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrError()Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/i3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li/c/b0/e/f/e/i3;-><init>(Li/c/b0/b/a0;Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrErrorStage()Ljava/util/concurrent/CompletionStage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/d/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/e/d/i;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribeWith(Li/c/b0/b/c0;)Li/c/b0/b/c0;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    return-object v0
.end method

.method public final singleStage(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/d/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Li/c/b0/e/d/i;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribeWith(Li/c/b0/b/c0;)Li/c/b0/b/c0;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletionStage;

    return-object p1
.end method

.method public final skip(J)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    .line 1
    invoke-static {p0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Li/c/b0/e/f/e/j3;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/j3;-><init>(Li/c/b0/b/a0;J)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 expected but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p1, p2, p3}, Li/c/b0/b/v;->timer(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->skipUntil(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {p1, p2, p3, p4}, Li/c/b0/b/v;->timer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->skipUntil(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(I)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Li/c/b0/e/f/e/k3;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/k3;-><init>(Li/c/b0/b/a0;I)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Li/c/b0/j/a;->c()Li/c/b0/b/d0;

    move-result-object v4

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/v;->skipLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/v;->skipLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 7
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/v;->skipLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "ZI)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 8
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 9
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 10
    invoke-static {p6, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    shl-int/lit8 v7, p6, 0x1

    .line 11
    new-instance p6, Li/c/b0/e/f/e/l3;

    move-object v1, p6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Li/c/b0/e/f/e/l3;-><init>(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;IZ)V

    invoke-static {p6}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Z)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {}, Li/c/b0/j/a;->c()Li/c/b0/b/d0;

    move-result-object v4

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/v;->skipLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final skipUntil(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TU;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/m3;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/m3;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final skipWhile(Li/c/b0/d/p;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/n3;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/n3;-><init>(Li/c/b0/b/a0;Li/c/b0/d/p;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final sorted()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/b/v;->toList()Li/c/b0/b/e0;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object v0

    invoke-static {}, Li/c/b0/e/b/a;->n()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Li/c/b0/e/b/a;->m(Ljava/util/Comparator;)Li/c/b0/d/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapIterable(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Li/c/b0/b/v;->toList()Li/c/b0/b/e0;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object v0

    invoke-static {p1}, Li/c/b0/e/b/a;->m(Ljava/util/Comparator;)Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->flatMapIterable(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 8
    invoke-static {v0}, Li/c/b0/b/v;->concatArray([Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Li/c/b0/b/i0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i0<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Li/c/b0/b/e0;->M(Li/c/b0/b/i0;)Li/c/b0/b/e0;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1, p0}, Li/c/b0/b/v;->concat(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Li/c/b0/b/i;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/b0/b/e;->O(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/e;->M()Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1, p0}, Li/c/b0/b/v;->concat(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Li/c/b0/b/t;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/t<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Li/c/b0/b/p;->z(Li/c/b0/b/t;)Li/c/b0/b/p;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/p;->x()Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1, p0}, Li/c/b0/b/v;->concat(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final varargs startWithArray([Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-static {p0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 4
    invoke-static {v0}, Li/c/b0/b/v;->concatArray([Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final startWithItem(Ljava/lang/Object;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/a0;

    .line 1
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Li/c/b0/b/v;->concatArray([Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final startWithIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/a0;

    .line 1
    invoke-static {p1}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Li/c/b0/b/v;->concatArray([Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Li/c/b0/c/c;
    .locals 3

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v0

    sget-object v1, Li/c/b0/e/b/a;->e:Li/c/b0/d/g;

    sget-object v2, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-virtual {p0, v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;)",
            "Li/c/b0/c/c;"
        }
    .end annotation

    .line 2
    sget-object v0, Li/c/b0/e/b/a;->e:Li/c/b0/d/g;

    sget-object v1, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-virtual {p0, p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/c/c;"
        }
    .end annotation

    .line 3
    sget-object v0, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/c/c;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 5
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 6
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v0, Li/c/b0/e/e/r;

    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Li/c/b0/e/e/r;-><init>(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/g;)V

    .line 8
    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    return-object v0
.end method

.method public final subscribe(Li/c/b0/b/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    :try_start_0
    invoke-static {p0, p1}, Li/c/b0/h/a;->y(Li/c/b0/b/v;Li/c/b0/b/c0;)Li/c/b0/b/c0;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, p1}, Li/c/b0/b/v;->subscribeActual(Li/c/b0/b/c0;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 14
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 17
    throw v0

    :catch_0
    move-exception p1

    .line 18
    throw p1
.end method

.method protected abstract subscribeActual(Li/c/b0/b/c0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/o3;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/o3;-><init>(Li/c/b0/b/a0;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWith(Li/c/b0/b/c0;)Li/c/b0/b/c0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Li/c/b0/b/c0<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    return-object p1
.end method

.method public final switchIfEmpty(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/p3;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/p3;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final switchMap(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->switchMap(Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final switchMap(Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Li/c/b0/e/c/i;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Li/c/b0/e/c/i;

    invoke-interface {p2}, Li/c/b0/e/c/i;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {p2, p1}, Li/c/b0/e/f/e/b3;->a(Ljava/lang/Object;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance v0, Li/c/b0/e/f/e/q3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Li/c/b0/e/f/e/q3;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;IZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/d/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Li/c/b0/e/f/d/e;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapCompletableDelayError(Li/c/b0/d/o;)Li/c/b0/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/d/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Li/c/b0/e/f/d/e;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapDelayError(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->switchMapDelayError(Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapDelayError(Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;I)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Li/c/b0/e/c/i;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Li/c/b0/e/c/i;

    invoke-interface {p2}, Li/c/b0/e/c/i;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {p2, p1}, Li/c/b0/e/f/e/b3;->a(Ljava/lang/Object;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance v0, Li/c/b0/e/f/e/q3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Li/c/b0/e/f/e/q3;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;IZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapMaybe(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/d/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Li/c/b0/e/f/d/f;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapMaybeDelayError(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/d/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Li/c/b0/e/f/d/f;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapSingle(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/d/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Li/c/b0/e/f/d/g;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapSingleDelayError(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/d/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Li/c/b0/e/f/d/g;-><init>(Li/c/b0/b/v;Li/c/b0/d/o;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final take(J)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Li/c/b0/e/f/e/r3;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/r3;-><init>(Li/c/b0/b/a0;J)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {p1, p2, p3}, Li/c/b0/b/v;->timer(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->takeUntil(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p1, p2, p3, p4}, Li/c/b0/b/v;->timer(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->takeUntil(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(I)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Li/c/b0/e/f/e/p1;

    invoke-direct {p1, p0}, Li/c/b0/e/f/e/p1;-><init>(Li/c/b0/b/a0;)V

    invoke-static {p1}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Li/c/b0/e/f/e/t3;

    invoke-direct {p1, p0}, Li/c/b0/e/f/e/t3;-><init>(Li/c/b0/b/a0;)V

    invoke-static {p1}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Li/c/b0/e/f/e/s3;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/s3;-><init>(Li/c/b0/b/a0;I)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final takeLast(JJLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {}, Li/c/b0/j/a;->c()Li/c/b0/b/d0;

    move-result-object v6

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Li/c/b0/b/v;->takeLast(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Li/c/b0/b/v;->takeLast(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "ZI)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    move-wide v2, p1

    const-string v0, "unit is null"

    move-object/from16 v6, p5

    .line 7
    invoke-static {v6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v7, p6

    .line 8
    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    move/from16 v8, p8

    .line 9
    invoke-static {v8, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 10
    new-instance v10, Li/c/b0/e/f/e/u3;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Li/c/b0/e/f/e/u3;-><init>(Li/c/b0/b/a0;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;IZ)V

    invoke-static {v10}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 12
    invoke-static {}, Li/c/b0/j/a;->c()Li/c/b0/b/d0;

    move-result-object v4

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/v;->takeLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 14
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/v;->takeLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 15
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/v;->takeLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "ZI)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-wide v1, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .line 16
    invoke-virtual/range {v0 .. v8}, Li/c/b0/b/v;->takeLast(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Z)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 13
    invoke-static {}, Li/c/b0/j/a;->c()Li/c/b0/b/d0;

    move-result-object v4

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/v;->takeLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TU;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/v3;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/v3;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Li/c/b0/d/p;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stopPredicate is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/f/e/w3;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/w3;-><init>(Li/c/b0/b/a0;Li/c/b0/d/p;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final takeWhile(Li/c/b0/d/p;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/x3;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/x3;-><init>(Li/c/b0/b/a0;Li/c/b0/d/p;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final test()Li/c/b0/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/g/g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/g/g;

    invoke-direct {v0}, Li/c/b0/g/g;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    return-object v0
.end method

.method public final test(Z)Li/c/b0/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Li/c/b0/g/g<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Li/c/b0/g/g;

    invoke-direct {v0}, Li/c/b0/g/g;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Li/c/b0/g/g;->dispose()V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    return-object v0
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Li/c/b0/b/v;->throttleFirst(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/f/e/y3;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/y3;-><init>(Li/c/b0/b/a0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Li/c/b0/b/v;->sample(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Li/c/b0/b/v;->sample(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->throttleLatest(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->throttleLatest(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Li/c/b0/e/f/e/z3;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Li/c/b0/e/f/e/z3;-><init>(Li/c/b0/b/v;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;Z)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->throttleLatest(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Li/c/b0/b/v;->debounce(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Li/c/b0/b/v;->debounce(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timeInterval()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Li/c/b0/j/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li/c/b0/b/v;->timeInterval(Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final timeInterval(Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Li/c/b0/j/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Li/c/b0/b/v;->timeInterval(Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timeInterval(Ljava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "Li/c/b0/j/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->timeInterval(Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timeInterval(Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Li/c/b0/j/b<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 5
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Li/c/b0/e/f/e/a4;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/a4;-><init>(Li/c/b0/b/a0;Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Li/c/b0/b/v;->timeout0(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/a0;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Li/c/b0/b/v;->timeout0(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/a0;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Li/c/b0/b/v;->timeout0(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/a0;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    .line 7
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Li/c/b0/b/v;->timeout0(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/a0;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Li/c/b0/b/a0;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TU;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    .line 10
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Li/c/b0/b/v;->timeout0(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TU;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    .line 12
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    .line 13
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0, p1, p2, p3}, Li/c/b0/b/v;->timeout0(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v0}, Li/c/b0/b/v;->timeout0(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Li/c/b0/d/o;Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Li/c/b0/b/v;->timeout0(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timestamp()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Li/c/b0/j/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li/c/b0/b/v;->timestamp(Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final timestamp(Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Li/c/b0/j/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Li/c/b0/b/v;->timestamp(Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timestamp(Ljava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "Li/c/b0/j/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->timestamp(Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final timestamp(Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Li/c/b0/j/b<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 5
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p1, p2}, Li/c/b0/e/b/a;->t(Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final to(Li/c/b0/b/w;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/w<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li/c/b0/b/w;

    invoke-interface {p1, p0}, Li/c/b0/b/w;->a(Li/c/b0/b/v;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toFlowable(Li/c/b0/b/d;)Li/c/b0/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/d;",
            ")",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "strategy is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/b/g;

    invoke-direct {v0, p0}, Li/c/b0/e/f/b/g;-><init>(Li/c/b0/b/a0;)V

    .line 3
    sget-object v1, Li/c/b0/b/v$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 4
    invoke-virtual {v0}, Li/c/b0/b/l;->j()Li/c/b0/b/l;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Li/c/b0/e/f/b/k;

    invoke-direct {p1, v0}, Li/c/b0/e/f/b/k;-><init>(Li/c/b0/b/l;)V

    invoke-static {p1}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 6
    :cond_2
    invoke-virtual {v0}, Li/c/b0/b/l;->m()Li/c/b0/b/l;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    invoke-virtual {v0}, Li/c/b0/b/l;->l()Li/c/b0/b/l;

    move-result-object p1

    return-object p1
.end method

.method public final toFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/e/o;

    invoke-direct {v0}, Li/c/b0/e/e/o;-><init>()V

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->subscribeWith(Li/c/b0/b/c0;)Li/c/b0/b/c0;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final toList()Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Li/c/b0/b/v;->toList(I)Li/c/b0/b/e0;

    move-result-object v0

    return-object v0
.end method

.method public final toList(I)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    .line 2
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Li/c/b0/e/f/e/f4;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/f4;-><init>(Li/c/b0/b/a0;I)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final toList(Li/c/b0/d/q;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Li/c/b0/d/q<",
            "TU;>;)",
            "Li/c/b0/b/e0<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "collectionSupplier is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/e/f4;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/f4;-><init>(Li/c/b0/b/a0;Li/c/b0/d/q;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final toMap(Li/c/b0/d/o;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/Map<",
            "TK;TT;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Li/c/b0/e/k/l;->asSupplier()Li/c/b0/d/q;

    move-result-object v0

    invoke-static {p1}, Li/c/b0/e/b/a;->C(Li/c/b0/d/o;)Li/c/b0/d/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Li/c/b0/b/v;->collect(Li/c/b0/d/q;Li/c/b0/d/b;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final toMap(Li/c/b0/d/o;Li/c/b0/d/o;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;",
            "Li/c/b0/d/o<",
            "-TT;+TV;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Li/c/b0/e/k/l;->asSupplier()Li/c/b0/d/q;

    move-result-object v0

    invoke-static {p1, p2}, Li/c/b0/e/b/a;->D(Li/c/b0/d/o;Li/c/b0/d/o;)Li/c/b0/d/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Li/c/b0/b/v;->collect(Li/c/b0/d/q;Li/c/b0/d/b;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final toMap(Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/q;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;",
            "Li/c/b0/d/o<",
            "-TT;+TV;>;",
            "Li/c/b0/d/q<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    .line 8
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-static {p1, p2}, Li/c/b0/e/b/a;->D(Li/c/b0/d/o;Li/c/b0/d/o;)Li/c/b0/d/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Li/c/b0/b/v;->collect(Li/c/b0/d/q;Li/c/b0/d/b;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Li/c/b0/d/o;)Li/c/b0/b/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->i()Li/c/b0/d/o;

    move-result-object v0

    .line 2
    invoke-static {}, Li/c/b0/e/k/l;->asSupplier()Li/c/b0/d/q;

    move-result-object v1

    .line 3
    invoke-static {}, Li/c/b0/e/k/b;->asFunction()Li/c/b0/d/o;

    move-result-object v2

    .line 4
    invoke-virtual {p0, p1, v0, v1, v2}, Li/c/b0/b/v;->toMultimap(Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Li/c/b0/d/o;Li/c/b0/d/o;)Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;",
            "Li/c/b0/d/o<",
            "-TT;+TV;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 5
    invoke-static {}, Li/c/b0/e/k/l;->asSupplier()Li/c/b0/d/q;

    move-result-object v0

    .line 6
    invoke-static {}, Li/c/b0/e/k/b;->asFunction()Li/c/b0/d/o;

    move-result-object v1

    .line 7
    invoke-virtual {p0, p1, p2, v0, v1}, Li/c/b0/b/v;->toMultimap(Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/q;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;",
            "Li/c/b0/d/o<",
            "-TT;+TV;>;",
            "Li/c/b0/d/q<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 13
    invoke-static {}, Li/c/b0/e/k/b;->asFunction()Li/c/b0/d/o;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Li/c/b0/b/v;->toMultimap(Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/q;Li/c/b0/d/o;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TK;>;",
            "Li/c/b0/d/o<",
            "-TT;+TV;>;",
            "Li/c/b0/d/q<",
            "+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;",
            "Li/c/b0/d/o<",
            "-TK;+",
            "Ljava/util/Collection<",
            "-TV;>;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 9
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    .line 10
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionFactory is null"

    .line 11
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {p1, p2, p4}, Li/c/b0/e/b/a;->E(Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/o;)Li/c/b0/d/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Li/c/b0/b/v;->collect(Li/c/b0/d/q;Li/c/b0/d/b;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final toSortedList()Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->n()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/c/b0/b/v;->toSortedList(Ljava/util/Comparator;)Li/c/b0/b/e0;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(I)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 6
    invoke-static {}, Li/c/b0/e/b/a;->n()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Li/c/b0/b/v;->toSortedList(Ljava/util/Comparator;I)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final toSortedList(Ljava/util/Comparator;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Li/c/b0/b/v;->toList()Li/c/b0/b/e0;

    move-result-object v0

    invoke-static {p1}, Li/c/b0/e/b/a;->m(Ljava/util/Comparator;)Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final toSortedList(Ljava/util/Comparator;I)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p2}, Li/c/b0/b/v;->toList(I)Li/c/b0/b/e0;

    move-result-object p2

    invoke-static {p1}, Li/c/b0/e/b/a;->m(Ljava/util/Comparator;)Li/c/b0/d/o;

    move-result-object p1

    invoke-virtual {p2, p1}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final unsubscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/e/g4;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/e/g4;-><init>(Li/c/b0/b/a0;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(J)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->window(JJI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJ)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->window(JJI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJI)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "count"

    .line 3
    invoke-static {p1, p2, v0}, Li/c/b0/e/b/b;->c(JLjava/lang/String;)J

    const-string v0, "skip"

    .line 4
    invoke-static {p3, p4, v0}, Li/c/b0/e/b/b;->c(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    .line 5
    invoke-static {p5, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 6
    new-instance v0, Li/c/b0/e/f/e/i4;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Li/c/b0/e/f/e/i4;-><init>(Li/c/b0/b/a0;JJI)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    .line 7
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v6

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Li/c/b0/b/v;->window(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    .line 8
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Li/c/b0/b/v;->window(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;I)Li/c/b0/b/v;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "I)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "timespan"

    move-wide v3, p1

    .line 9
    invoke-static {p1, p2, v0}, Li/c/b0/e/b/b;->c(JLjava/lang/String;)J

    const-string v0, "timeskip"

    move-wide/from16 v5, p3

    .line 10
    invoke-static {v5, v6, v0}, Li/c/b0/e/b/b;->c(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    move/from16 v11, p7

    .line 11
    invoke-static {v11, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    .line 12
    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    .line 13
    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    new-instance v0, Li/c/b0/e/f/e/m4;

    const-wide v9, 0x7fffffffffffffffL

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Li/c/b0/e/f/e/m4;-><init>(Li/c/b0/b/v;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;JIZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    .line 15
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Li/c/b0/b/v;->window(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;JZ)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;J)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "J)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    .line 16
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Li/c/b0/b/v;->window(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;JZ)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;JZ)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "JZ)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    .line 17
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Li/c/b0/b/v;->window(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;JZ)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 18
    invoke-virtual/range {v0 .. v7}, Li/c/b0/b/v;->window(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;JZ)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;J)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "J)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 19
    invoke-virtual/range {v0 .. v7}, Li/c/b0/b/v;->window(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;JZ)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;JZ)Li/c/b0/b/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "JZ)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    .line 20
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Li/c/b0/b/v;->window(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;JZI)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;JZI)Li/c/b0/b/v;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "JZI)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    move/from16 v11, p8

    .line 21
    invoke-static {v11, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    .line 22
    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p3

    .line 23
    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move-wide/from16 v9, p5

    .line 24
    invoke-static {v9, v10, v0}, Li/c/b0/e/b/b;->c(JLjava/lang/String;)J

    .line 25
    new-instance v0, Li/c/b0/e/f/e/m4;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Li/c/b0/e/f/e/m4;-><init>(Li/c/b0/b/v;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;JIZ)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final window(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TB;>;)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    .line 26
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Li/c/b0/b/v;->window(Li/c/b0/b/a0;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(Li/c/b0/b/a0;I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TB;>;I)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundaryIndicator is null"

    .line 27
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 28
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 29
    new-instance v0, Li/c/b0/e/f/e/j4;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/j4;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;I)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(Li/c/b0/b/a0;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TU;>;",
            "Li/c/b0/d/o<",
            "-TU;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    .line 30
    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/v;->window(Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final window(Li/c/b0/b/a0;Li/c/b0/d/o;I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TU;>;",
            "Li/c/b0/d/o<",
            "-TU;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;I)",
            "Li/c/b0/b/v<",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    .line 31
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    .line 32
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 33
    invoke-static {p3, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 34
    new-instance v0, Li/c/b0/e/f/e/k4;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/e/k4;-><init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/o;I)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/j;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT1;>;",
            "Li/c/b0/b/a0<",
            "TT2;>;",
            "Li/c/b0/b/a0<",
            "TT3;>;",
            "Li/c/b0/b/a0<",
            "TT4;>;",
            "Li/c/b0/d/j<",
            "-TT;-TT1;-TT2;-TT3;-TT4;TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 15
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 16
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 17
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 18
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 19
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    invoke-static {p5}, Li/c/b0/e/b/a;->x(Li/c/b0/d/j;)Li/c/b0/d/o;

    move-result-object p5

    const/4 v0, 0x4

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 21
    invoke-virtual {p0, v0, p5}, Li/c/b0/b/v;->withLatestFrom([Li/c/b0/b/a0;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/i;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT1;>;",
            "Li/c/b0/b/a0<",
            "TT2;>;",
            "Li/c/b0/b/a0<",
            "TT3;>;",
            "Li/c/b0/d/i<",
            "-TT;-TT1;-TT2;-TT3;TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 11
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 12
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-static {p4}, Li/c/b0/e/b/a;->w(Li/c/b0/d/i;)Li/c/b0/d/o;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 14
    invoke-virtual {p0, v0, p4}, Li/c/b0/b/v;->withLatestFrom([Li/c/b0/b/a0;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/h;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT1;>;",
            "Li/c/b0/b/a0<",
            "TT2;>;",
            "Li/c/b0/d/h<",
            "-TT;-TT1;-TT2;TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 5
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 6
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Li/c/b0/e/b/a;->v(Li/c/b0/d/h;)Li/c/b0/d/o;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/a0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 8
    invoke-virtual {p0, v0, p3}, Li/c/b0/b/v;->withLatestFrom([Li/c/b0/b/a0;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TU;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/n4;

    invoke-direct {v0, p0, p2, p1}, Li/c/b0/e/f/e/n4;-><init>(Li/c/b0/b/a0;Li/c/b0/d/c;Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Ljava/lang/Iterable;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "*>;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    .line 25
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 26
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    new-instance v0, Li/c/b0/e/f/e/o4;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/o4;-><init>(Li/c/b0/b/a0;Ljava/lang/Iterable;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom([Li/c/b0/b/a0;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Li/c/b0/b/a0<",
            "*>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    .line 22
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 23
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    new-instance v0, Li/c/b0/e/f/e/o4;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/o4;-><init>(Li/c/b0/b/a0;[Li/c/b0/b/a0;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TU;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p0, p1, p2}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Li/c/b0/b/a0;Li/c/b0/d/c;Z)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TU;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;Z)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1, p2, p3}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Li/c/b0/b/a0;Li/c/b0/d/c;ZI)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TU;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;ZI)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1, p2, p3, p4}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;ZI)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Ljava/lang/Iterable;Li/c/b0/d/c;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TU;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;)",
            "Li/c/b0/b/v<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/e/q4;

    invoke-direct {v0, p0, p1, p2}, Li/c/b0/e/f/e/q4;-><init>(Li/c/b0/b/v;Ljava/lang/Iterable;Li/c/b0/d/c;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
