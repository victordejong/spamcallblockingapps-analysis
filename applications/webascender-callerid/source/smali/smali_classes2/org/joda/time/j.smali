.class public final Lorg/joda/time/j;
.super Lorg/joda/time/x/f;
.source "SourceFile"


# static fields
.field public static final g:Lorg/joda/time/j;

.field public static final h:Lorg/joda/time/j;

.field public static final i:Lorg/joda/time/j;

.field public static final j:Lorg/joda/time/j;

.field public static final k:Lorg/joda/time/j;

.field public static final l:Lorg/joda/time/j;

.field public static final m:Lorg/joda/time/j;

.field public static final n:Lorg/joda/time/j;

.field public static final o:Lorg/joda/time/j;

.field public static final p:Lorg/joda/time/j;

.field public static final q:Lorg/joda/time/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/joda/time/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/j;-><init>(I)V

    sput-object v0, Lorg/joda/time/j;->g:Lorg/joda/time/j;

    .line 2
    new-instance v0, Lorg/joda/time/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/j;-><init>(I)V

    sput-object v0, Lorg/joda/time/j;->h:Lorg/joda/time/j;

    .line 3
    new-instance v0, Lorg/joda/time/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/j;-><init>(I)V

    sput-object v0, Lorg/joda/time/j;->i:Lorg/joda/time/j;

    .line 4
    new-instance v0, Lorg/joda/time/j;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/j;-><init>(I)V

    sput-object v0, Lorg/joda/time/j;->j:Lorg/joda/time/j;

    .line 5
    new-instance v0, Lorg/joda/time/j;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/joda/time/j;-><init>(I)V

    sput-object v0, Lorg/joda/time/j;->k:Lorg/joda/time/j;

    .line 6
    new-instance v0, Lorg/joda/time/j;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/joda/time/j;-><init>(I)V

    sput-object v0, Lorg/joda/time/j;->l:Lorg/joda/time/j;

    .line 7
    new-instance v0, Lorg/joda/time/j;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/joda/time/j;-><init>(I)V

    sput-object v0, Lorg/joda/time/j;->m:Lorg/joda/time/j;

    .line 8
    new-instance v0, Lorg/joda/time/j;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/joda/time/j;-><init>(I)V

    sput-object v0, Lorg/joda/time/j;->n:Lorg/joda/time/j;

    .line 9
    new-instance v0, Lorg/joda/time/j;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/joda/time/j;-><init>(I)V

    sput-object v0, Lorg/joda/time/j;->o:Lorg/joda/time/j;

    .line 10
    new-instance v0, Lorg/joda/time/j;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/j;-><init>(I)V

    sput-object v0, Lorg/joda/time/j;->p:Lorg/joda/time/j;

    .line 11
    new-instance v0, Lorg/joda/time/j;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/j;-><init>(I)V

    sput-object v0, Lorg/joda/time/j;->q:Lorg/joda/time/j;

    .line 12
    invoke-static {}, Lorg/joda/time/b0/k;->a()Lorg/joda/time/b0/o;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/o;->c()Lorg/joda/time/o;

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

.method public static m(I)Lorg/joda/time/j;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance v0, Lorg/joda/time/j;

    invoke-direct {v0, p0}, Lorg/joda/time/j;-><init>(I)V

    return-object v0

    .line 2
    :pswitch_0
    sget-object p0, Lorg/joda/time/j;->o:Lorg/joda/time/j;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lorg/joda/time/j;->n:Lorg/joda/time/j;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lorg/joda/time/j;->m:Lorg/joda/time/j;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lorg/joda/time/j;->l:Lorg/joda/time/j;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lorg/joda/time/j;->k:Lorg/joda/time/j;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lorg/joda/time/j;->j:Lorg/joda/time/j;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lorg/joda/time/j;->i:Lorg/joda/time/j;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lorg/joda/time/j;->h:Lorg/joda/time/j;

    return-object p0

    .line 10
    :pswitch_8
    sget-object p0, Lorg/joda/time/j;->g:Lorg/joda/time/j;

    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lorg/joda/time/j;->p:Lorg/joda/time/j;

    return-object p0

    .line 12
    :cond_1
    sget-object p0, Lorg/joda/time/j;->q:Lorg/joda/time/j;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/x/f;->k()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/j;->m(I)Lorg/joda/time/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c()Lorg/joda/time/o;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/o;->c()Lorg/joda/time/o;

    move-result-object v0

    return-object v0
.end method

.method public j()Lorg/joda/time/i;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->g()Lorg/joda/time/i;

    move-result-object v0

    return-object v0
.end method

.method public n()Lorg/joda/time/v;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/x/f;->k()I

    move-result v0

    const/16 v1, 0xe10

    invoke-static {v0, v1}, Lorg/joda/time/a0/h;->d(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/v;->n(I)Lorg/joda/time/v;

    move-result-object v0

    return-object v0
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

    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
