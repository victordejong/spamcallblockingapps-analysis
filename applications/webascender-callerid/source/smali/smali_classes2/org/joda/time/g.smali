.class public final Lorg/joda/time/g;
.super Lorg/joda/time/x/f;
.source "SourceFile"


# static fields
.field public static final g:Lorg/joda/time/g;

.field public static final h:Lorg/joda/time/g;

.field public static final i:Lorg/joda/time/g;

.field public static final j:Lorg/joda/time/g;

.field public static final k:Lorg/joda/time/g;

.field public static final l:Lorg/joda/time/g;

.field public static final m:Lorg/joda/time/g;

.field public static final n:Lorg/joda/time/g;

.field public static final o:Lorg/joda/time/g;

.field public static final p:Lorg/joda/time/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/joda/time/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/g;-><init>(I)V

    sput-object v0, Lorg/joda/time/g;->g:Lorg/joda/time/g;

    .line 2
    new-instance v0, Lorg/joda/time/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/g;-><init>(I)V

    sput-object v0, Lorg/joda/time/g;->h:Lorg/joda/time/g;

    .line 3
    new-instance v0, Lorg/joda/time/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/g;-><init>(I)V

    sput-object v0, Lorg/joda/time/g;->i:Lorg/joda/time/g;

    .line 4
    new-instance v0, Lorg/joda/time/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/g;-><init>(I)V

    sput-object v0, Lorg/joda/time/g;->j:Lorg/joda/time/g;

    .line 5
    new-instance v0, Lorg/joda/time/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/joda/time/g;-><init>(I)V

    sput-object v0, Lorg/joda/time/g;->k:Lorg/joda/time/g;

    .line 6
    new-instance v0, Lorg/joda/time/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/joda/time/g;-><init>(I)V

    sput-object v0, Lorg/joda/time/g;->l:Lorg/joda/time/g;

    .line 7
    new-instance v0, Lorg/joda/time/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/joda/time/g;-><init>(I)V

    sput-object v0, Lorg/joda/time/g;->m:Lorg/joda/time/g;

    .line 8
    new-instance v0, Lorg/joda/time/g;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/joda/time/g;-><init>(I)V

    sput-object v0, Lorg/joda/time/g;->n:Lorg/joda/time/g;

    .line 9
    new-instance v0, Lorg/joda/time/g;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/g;-><init>(I)V

    sput-object v0, Lorg/joda/time/g;->o:Lorg/joda/time/g;

    .line 10
    new-instance v0, Lorg/joda/time/g;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/g;-><init>(I)V

    sput-object v0, Lorg/joda/time/g;->p:Lorg/joda/time/g;

    .line 11
    invoke-static {}, Lorg/joda/time/b0/k;->a()Lorg/joda/time/b0/o;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/o;->a()Lorg/joda/time/o;

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

.method public static m(I)Lorg/joda/time/g;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance v0, Lorg/joda/time/g;

    invoke-direct {v0, p0}, Lorg/joda/time/g;-><init>(I)V

    return-object v0

    .line 2
    :pswitch_0
    sget-object p0, Lorg/joda/time/g;->n:Lorg/joda/time/g;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lorg/joda/time/g;->m:Lorg/joda/time/g;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lorg/joda/time/g;->l:Lorg/joda/time/g;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lorg/joda/time/g;->k:Lorg/joda/time/g;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lorg/joda/time/g;->j:Lorg/joda/time/g;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lorg/joda/time/g;->i:Lorg/joda/time/g;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lorg/joda/time/g;->h:Lorg/joda/time/g;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lorg/joda/time/g;->g:Lorg/joda/time/g;

    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lorg/joda/time/g;->o:Lorg/joda/time/g;

    return-object p0

    .line 11
    :cond_1
    sget-object p0, Lorg/joda/time/g;->p:Lorg/joda/time/g;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Lorg/joda/time/t;Lorg/joda/time/t;)Lorg/joda/time/g;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/joda/time/l;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/joda/time/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/joda/time/t;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/e;->c(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/joda/time/a;->h()Lorg/joda/time/h;

    move-result-object v0

    check-cast p1, Lorg/joda/time/l;

    invoke-virtual {p1}, Lorg/joda/time/l;->j()J

    move-result-wide v1

    check-cast p0, Lorg/joda/time/l;

    invoke-virtual {p0}, Lorg/joda/time/l;->j()J

    move-result-wide p0

    invoke-virtual {v0, v1, v2, p0, p1}, Lorg/joda/time/h;->h(JJ)I

    move-result p0

    .line 4
    invoke-static {p0}, Lorg/joda/time/g;->m(I)Lorg/joda/time/g;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lorg/joda/time/g;->g:Lorg/joda/time/g;

    invoke-static {p0, p1, v0}, Lorg/joda/time/x/f;->d(Lorg/joda/time/t;Lorg/joda/time/t;Lorg/joda/time/u;)I

    move-result p0

    .line 6
    invoke-static {p0}, Lorg/joda/time/g;->m(I)Lorg/joda/time/g;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/x/f;->k()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/g;->m(I)Lorg/joda/time/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c()Lorg/joda/time/o;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/o;->a()Lorg/joda/time/o;

    move-result-object v0

    return-object v0
.end method

.method public j()Lorg/joda/time/i;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->b()Lorg/joda/time/i;

    move-result-object v0

    return-object v0
.end method

.method public p()I
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

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/x/f;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
