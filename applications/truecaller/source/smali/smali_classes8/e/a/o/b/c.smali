.class public final Le/a/o/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/b;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/p5/c0;

.field public final c:Le/a/b0/q/z;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/b0/q/z;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/b/c;->b:Le/a/p5/c0;

    iput-object p2, p0, Le/a/o/b/c;->c:Le/a/b0/q/z;

    .line 2
    new-instance p1, Le/a/o/b/c$a;

    invoke-direct {p1, p0}, Le/a/o/b/c$a;-><init>(Le/a/o/b/c;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/o/b/c;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaIsoControl;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaIsoControl;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    add-int/2addr v1, v2

    .line 6
    :goto_1
    array-length v4, p1

    if-ne v1, v4, :cond_3

    .line 7
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v1, v3

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([CII)V

    move-object p1, v0

    :goto_2
    const-string v0, "CharMatcher\n            \u2026     .removeFrom(message)"

    .line 8
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 12
    iget-object v2, p0, Le/a/o/b/c;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-le v0, v2, :cond_2

    return-object v1

    :cond_2
    return-object p1

    .line 13
    :cond_3
    aget-char v4, p1, v1

    invoke-virtual {v0, v4}, Lcom/google/common/base/CharMatcher$JavaIsoControl;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sub-int v4, v1, v3

    .line 14
    aget-char v5, p1, v1

    aput-char v5, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Lcom/truecaller/data/entity/MessageType;Ljava/lang/String;)Lcom/truecaller/data/entity/CallContextMessage;
    .locals 9

    const-string v0, "message"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureType"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageType"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p5, Lcom/truecaller/data/entity/MessageType$Preset;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p3}, Le/a/o/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v3, p3

    const/4 p3, 0x0

    if-nez v3, :cond_1

    return-object p3

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    invoke-static {p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    return-object p3

    .line 4
    :cond_4
    iget-object v0, p0, Le/a/o/b/c;->c:Le/a/b0/q/z;

    invoke-interface {v0, p2}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    return-object p3

    .line 5
    :cond_5
    new-instance p2, Lcom/truecaller/data/entity/CallContextMessage;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p1, "UUID.randomUUID().toString()"

    .line 6
    invoke-static {p1}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v1, p1

    const/4 v7, 0x0

    const/16 v8, 0x40

    move-object v0, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 7
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/data/entity/CallContextMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Lcom/truecaller/data/entity/MessageType;Ljava/lang/String;ZI)V

    return-object p2
.end method
