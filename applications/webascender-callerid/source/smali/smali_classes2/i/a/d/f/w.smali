.class abstract Li/a/d/f/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/y/h;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static o(Li/a/d/f/n;Ljava/util/List;Ljava/util/List;Li/a/a/c/j;IILi/a/d/f/y/j;Ljava/lang/String;JZ)Li/a/d/f/w;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/d/f/n;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Li/a/d/f/y/d;",
            ">;",
            "Li/a/a/c/j;",
            "II",
            "Li/a/d/f/y/j;",
            "Ljava/lang/String;",
            "JZ)",
            "Li/a/d/f/w;"
        }
    .end annotation

    .line 1
    new-instance v12, Li/a/d/f/f;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Li/a/d/f/f;-><init>(Li/a/d/f/n;Ljava/util/List;Ljava/util/List;Li/a/a/c/j;IILi/a/d/f/y/j;Ljava/lang/String;JZ)V

    return-object v12
.end method


# virtual methods
.method abstract A()Li/a/d/f/y/j;
.end method

.method abstract B()I
.end method

.method abstract C()I
.end method

.method public a()Li/a/a/c/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->n()Li/a/a/c/j;

    move-result-object v0

    return-object v0
.end method

.method public b()Li/a/a/f/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->p()Li/a/d/f/n;

    move-result-object v0

    invoke-virtual {v0}, Li/a/d/f/n;->b()Li/a/a/f/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Li/a/d/f/y/g;->b(Li/a/d/f/y/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Li/a/d/f/y/g;->c(Li/a/d/f/y/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic f()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Li/a/d/f/y/g;->a(Li/a/d/f/y/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->p()Li/a/d/f/n;

    move-result-object v0

    invoke-virtual {v0}, Li/a/d/f/n;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Li/a/a/f/q;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->p()Li/a/d/f/n;

    move-result-object v0

    invoke-virtual {v0}, Li/a/d/f/n;->r()Li/a/a/f/q;

    move-result-object v0

    return-object v0
.end method

.method public i()Li/a/d/f/y/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->A()Li/a/d/f/y/j;

    move-result-object v0

    return-object v0
.end method

.method public j()Li/a/d/c/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->p()Li/a/d/f/n;

    move-result-object v0

    invoke-virtual {v0}, Li/a/d/f/n;->q()Li/a/d/c/f;

    move-result-object v0

    return-object v0
.end method

.method public k()Li/a/d/e/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->p()Li/a/d/f/n;

    move-result-object v0

    invoke-virtual {v0}, Li/a/d/f/n;->t()Li/a/d/e/d;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/a/d/f/y/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->y()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m()Li/a/a/f/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->p()Li/a/d/f/n;

    move-result-object v0

    invoke-virtual {v0}, Li/a/d/f/n;->s()Li/a/a/f/n;

    move-result-object v0

    return-object v0
.end method

.method abstract n()Li/a/a/c/j;
.end method

.method abstract p()Li/a/d/f/n;
.end method

.method abstract q()J
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->z()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->B()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->C()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpanData{spanContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Li/a/d/f/w;->b()Li/a/a/f/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentSpanContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Li/a/d/f/w;->m()Li/a/a/f/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Li/a/d/f/w;->k()Li/a/d/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instrumentationLibraryInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Li/a/d/f/w;->j()Li/a/d/c/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Li/a/d/f/w;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Li/a/d/f/w;->h()Li/a/a/f/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startEpochNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Li/a/d/f/w;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endEpochNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Li/a/d/f/w;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Li/a/d/f/w;->a()Li/a/a/c/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalAttributeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Li/a/d/f/w;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Li/a/d/f/w;->l()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalRecordedEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Li/a/d/f/w;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", links="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Li/a/d/f/w;->r()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalRecordedLinks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Li/a/d/f/w;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Li/a/d/f/w;->i()Li/a/d/f/y/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasEnded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Li/a/d/f/w;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->p()Li/a/d/f/n;

    move-result-object v0

    invoke-virtual {v0}, Li/a/d/f/n;->w()I

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/w;->w()Z

    move-result v0

    return v0
.end method

.method abstract w()Z
.end method

.method abstract x()Ljava/lang/String;
.end method

.method abstract y()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/a/d/f/y/d;",
            ">;"
        }
    .end annotation
.end method

.method abstract z()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
