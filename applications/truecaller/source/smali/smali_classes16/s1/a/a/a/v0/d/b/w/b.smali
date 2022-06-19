.class public Ls1/a/a/a/v0/d/b/w/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/l$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/b/w/b$b;,
        Ls1/a/a/a/v0/d/b/w/b$d;,
        Ls1/a/a/a/v0/d/b/w/b$c;
    }
.end annotation


# static fields
.field public static final j:Z

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/a;",
            "Ls1/a/a/a/v0/d/b/w/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[I

.field public b:Ls1/a/a/a/v0/e/a0/b/c;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:[Ljava/lang/String;

.field public i:Ls1/a/a/a/v0/d/b/w/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlin.ignore.old.metadata"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ls1/a/a/a/v0/d/b/w/b;->j:Z

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/b/w/b;->k:Ljava/util/Map;

    .line 3
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.jvm.internal.KotlinClass"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/d/b/w/a$a;->c:Ls1/a/a/a/v0/d/b/w/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.jvm.internal.KotlinFileFacade"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/d/b/w/a$a;->d:Ls1/a/a/a/v0/d/b/w/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClass"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/d/b/w/a$a;->f:Ls1/a/a/a/v0/d/b/w/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClassPart"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/d/b/w/a$a;->g:Ls1/a/a/a/v0/d/b/w/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.jvm.internal.KotlinSyntheticClass"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/d/b/w/a$a;->e:Ls1/a/a/a/v0/d/b/w/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ls1/a/a/a/v0/d/b/w/b;->a:[I

    .line 3
    iput-object v0, p0, Ls1/a/a/a/v0/d/b/w/b;->b:Ls1/a/a/a/v0/e/a0/b/c;

    .line 4
    iput-object v0, p0, Ls1/a/a/a/v0/d/b/w/b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Ls1/a/a/a/v0/d/b/w/b;->d:I

    .line 6
    iput-object v0, p0, Ls1/a/a/a/v0/d/b/w/b;->e:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Ls1/a/a/a/v0/d/b/w/b;->f:[Ljava/lang/String;

    .line 8
    iput-object v0, p0, Ls1/a/a/a/v0/d/b/w/b;->g:[Ljava/lang/String;

    .line 9
    iput-object v0, p0, Ls1/a/a/a/v0/d/b/w/b;->h:[Ljava/lang/String;

    .line 10
    iput-object v0, p0, Ls1/a/a/a/v0/d/b/w/b;->i:Ls1/a/a/a/v0/d/b/w/a$a;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/b/l$a;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object p2

    .line 2
    sget-object v0, Ls1/a/a/a/v0/d/a/v;->a:Ls1/a/a/a/v0/f/b;

    invoke-virtual {p2, v0}, Ls1/a/a/a/v0/f/b;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Ls1/a/a/a/v0/d/b/w/b$c;

    invoke-direct {p1, p0, v0}, Ls1/a/a/a/v0/d/b/w/b$c;-><init>(Ls1/a/a/a/v0/d/b/w/b;Ls1/a/a/a/v0/d/b/w/b$a;)V

    return-object p1

    .line 4
    :cond_0
    sget-boolean p2, Ls1/a/a/a/v0/d/b/w/b;->j:Z

    if-eqz p2, :cond_1

    return-object v0

    .line 5
    :cond_1
    iget-object p2, p0, Ls1/a/a/a/v0/d/b/w/b;->i:Ls1/a/a/a/v0/d/b/w/a$a;

    if-eqz p2, :cond_2

    return-object v0

    .line 6
    :cond_2
    sget-object p2, Ls1/a/a/a/v0/d/b/w/b;->k:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/b/w/a$a;

    if-eqz p1, :cond_3

    .line 7
    iput-object p1, p0, Ls1/a/a/a/v0/d/b/w/b;->i:Ls1/a/a/a/v0/d/b/w/a$a;

    .line 8
    new-instance p1, Ls1/a/a/a/v0/d/b/w/b$d;

    invoke-direct {p1, p0, v0}, Ls1/a/a/a/v0/d/b/w/b$d;-><init>(Ls1/a/a/a/v0/d/b/w/b;Ls1/a/a/a/v0/d/b/w/b$a;)V

    return-object p1

    :cond_3
    return-object v0
.end method
