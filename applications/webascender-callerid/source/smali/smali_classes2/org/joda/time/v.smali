.class public final Lorg/joda/time/v;
.super Lorg/joda/time/x/f;
.source "SourceFile"


# static fields
.field public static final g:Lorg/joda/time/v;

.field public static final h:Lorg/joda/time/v;

.field public static final i:Lorg/joda/time/v;

.field public static final j:Lorg/joda/time/v;

.field public static final k:Lorg/joda/time/v;

.field public static final l:Lorg/joda/time/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/joda/time/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/v;-><init>(I)V

    sput-object v0, Lorg/joda/time/v;->g:Lorg/joda/time/v;

    .line 2
    new-instance v0, Lorg/joda/time/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/v;-><init>(I)V

    sput-object v0, Lorg/joda/time/v;->h:Lorg/joda/time/v;

    .line 3
    new-instance v0, Lorg/joda/time/v;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/v;-><init>(I)V

    sput-object v0, Lorg/joda/time/v;->i:Lorg/joda/time/v;

    .line 4
    new-instance v0, Lorg/joda/time/v;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/v;-><init>(I)V

    sput-object v0, Lorg/joda/time/v;->j:Lorg/joda/time/v;

    .line 5
    new-instance v0, Lorg/joda/time/v;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/v;-><init>(I)V

    sput-object v0, Lorg/joda/time/v;->k:Lorg/joda/time/v;

    .line 6
    new-instance v0, Lorg/joda/time/v;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/v;-><init>(I)V

    sput-object v0, Lorg/joda/time/v;->l:Lorg/joda/time/v;

    .line 7
    invoke-static {}, Lorg/joda/time/b0/k;->a()Lorg/joda/time/b0/o;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/o;->d()Lorg/joda/time/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/b0/o;->c(Lorg/joda/time/o;)Lorg/joda/time/b0/o;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/joda/time/x/f;-><init>(I)V

    return-void
.end method

.method public static n(I)Lorg/joda/time/v;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_5

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1
    new-instance v0, Lorg/joda/time/v;

    invoke-direct {v0, p0}, Lorg/joda/time/v;-><init>(I)V

    return-object v0

    .line 2
    :cond_0
    sget-object p0, Lorg/joda/time/v;->j:Lorg/joda/time/v;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lorg/joda/time/v;->i:Lorg/joda/time/v;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lorg/joda/time/v;->h:Lorg/joda/time/v;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lorg/joda/time/v;->g:Lorg/joda/time/v;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lorg/joda/time/v;->k:Lorg/joda/time/v;

    return-object p0

    .line 7
    :cond_5
    sget-object p0, Lorg/joda/time/v;->l:Lorg/joda/time/v;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/x/f;->k()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/v;->n(I)Lorg/joda/time/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c()Lorg/joda/time/o;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/o;->d()Lorg/joda/time/o;

    move-result-object v0

    return-object v0
.end method

.method public j()Lorg/joda/time/i;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->k()Lorg/joda/time/i;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/x/f;->k()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/x/f;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
