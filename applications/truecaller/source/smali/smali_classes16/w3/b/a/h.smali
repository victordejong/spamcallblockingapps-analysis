.class public final Lw3/b/a/h;
.super Lw3/b/a/e0/i;
.source "SourceFile"


# static fields
.field public static final b:Lw3/b/a/h;

.field public static final c:Lw3/b/a/h;

.field public static final d:Lw3/b/a/h;

.field public static final e:Lw3/b/a/h;

.field public static final f:Lw3/b/a/h;

.field public static final g:Lw3/b/a/h;

.field public static final h:Lw3/b/a/h;

.field public static final i:Lw3/b/a/h;

.field public static final j:Lw3/b/a/h;

.field public static final k:Lw3/b/a/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw3/b/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw3/b/a/h;-><init>(I)V

    sput-object v0, Lw3/b/a/h;->b:Lw3/b/a/h;

    .line 2
    new-instance v0, Lw3/b/a/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lw3/b/a/h;-><init>(I)V

    sput-object v0, Lw3/b/a/h;->c:Lw3/b/a/h;

    .line 3
    new-instance v0, Lw3/b/a/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lw3/b/a/h;-><init>(I)V

    sput-object v0, Lw3/b/a/h;->d:Lw3/b/a/h;

    .line 4
    new-instance v0, Lw3/b/a/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lw3/b/a/h;-><init>(I)V

    sput-object v0, Lw3/b/a/h;->e:Lw3/b/a/h;

    .line 5
    new-instance v0, Lw3/b/a/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lw3/b/a/h;-><init>(I)V

    sput-object v0, Lw3/b/a/h;->f:Lw3/b/a/h;

    .line 6
    new-instance v0, Lw3/b/a/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lw3/b/a/h;-><init>(I)V

    sput-object v0, Lw3/b/a/h;->g:Lw3/b/a/h;

    .line 7
    new-instance v0, Lw3/b/a/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lw3/b/a/h;-><init>(I)V

    sput-object v0, Lw3/b/a/h;->h:Lw3/b/a/h;

    .line 8
    new-instance v0, Lw3/b/a/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lw3/b/a/h;-><init>(I)V

    sput-object v0, Lw3/b/a/h;->i:Lw3/b/a/h;

    .line 9
    new-instance v0, Lw3/b/a/h;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lw3/b/a/h;-><init>(I)V

    sput-object v0, Lw3/b/a/h;->j:Lw3/b/a/h;

    .line 10
    new-instance v0, Lw3/b/a/h;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lw3/b/a/h;-><init>(I)V

    sput-object v0, Lw3/b/a/h;->k:Lw3/b/a/h;

    .line 11
    invoke-static {}, Ls1/a/a/a/v0/f/d;->r3()Lw3/b/a/i0/m;

    move-result-object v0

    invoke-static {}, Lw3/b/a/v;->a()Lw3/b/a/v;

    .line 12
    iget-object v0, v0, Lw3/b/a/i0/m;->d:Lw3/b/a/v;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw3/b/a/e0/i;-><init>(I)V

    return-void
.end method

.method public static q(I)Lw3/b/a/h;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance v0, Lw3/b/a/h;

    invoke-direct {v0, p0}, Lw3/b/a/h;-><init>(I)V

    return-object v0

    .line 2
    :pswitch_0
    sget-object p0, Lw3/b/a/h;->i:Lw3/b/a/h;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lw3/b/a/h;->h:Lw3/b/a/h;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lw3/b/a/h;->g:Lw3/b/a/h;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lw3/b/a/h;->f:Lw3/b/a/h;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lw3/b/a/h;->e:Lw3/b/a/h;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lw3/b/a/h;->d:Lw3/b/a/h;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lw3/b/a/h;->c:Lw3/b/a/h;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lw3/b/a/h;->b:Lw3/b/a/h;

    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lw3/b/a/h;->j:Lw3/b/a/h;

    return-object p0

    .line 11
    :cond_1
    sget-object p0, Lw3/b/a/h;->k:Lw3/b/a/h;

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

.method public static r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;
    .locals 3

    .line 1
    check-cast p0, Lw3/b/a/p;

    .line 2
    iget-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 3
    invoke-static {v0}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lw3/b/a/a;->j()Lw3/b/a/j;

    move-result-object v0

    check-cast p1, Lw3/b/a/p;

    .line 5
    iget-wide v1, p1, Lw3/b/a/p;->a:J

    iget-wide p0, p0, Lw3/b/a/p;->a:J

    .line 6
    invoke-virtual {v0, v1, v2, p0, p1}, Lw3/b/a/j;->d(JJ)I

    move-result p0

    .line 7
    invoke-static {p0}, Lw3/b/a/h;->q(I)Lw3/b/a/h;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/e0/i;->a:I

    .line 2
    invoke-static {v0}, Lw3/b/a/h;->q(I)Lw3/b/a/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()Lw3/b/a/k;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->h:Lw3/b/a/k;

    return-object v0
.end method

.method public g()Lw3/b/a/v;
    .locals 1

    .line 1
    invoke-static {}, Lw3/b/a/v;->a()Lw3/b/a/v;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    const-string v0, "P"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lw3/b/a/e0/i;->a:I

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
