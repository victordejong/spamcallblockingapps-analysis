.class public final Lw3/b/a/f0/k;
.super Lw3/b/a/f0/a;
.source "SourceFile"


# static fields
.field public static final Q:Lw3/b/a/c;

.field public static final R:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lw3/b/a/g;",
            "Lw3/b/a/f0/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final S:Lw3/b/a/f0/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw3/b/a/f0/g;

    const-string v1, "BE"

    invoke-direct {v0, v1}, Lw3/b/a/f0/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw3/b/a/f0/k;->Q:Lw3/b/a/c;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lw3/b/a/f0/k;->R:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    sget-object v0, Lw3/b/a/g;->b:Lw3/b/a/g;

    invoke-static {v0}, Lw3/b/a/f0/k;->Y(Lw3/b/a/g;)Lw3/b/a/f0/k;

    move-result-object v0

    sput-object v0, Lw3/b/a/f0/k;->S:Lw3/b/a/f0/k;

    return-void
.end method

.method public constructor <init>(Lw3/b/a/a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lw3/b/a/f0/a;-><init>(Lw3/b/a/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static Y(Lw3/b/a/g;)Lw3/b/a/f0/k;
    .locals 13

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object p0

    .line 2
    :cond_0
    sget-object v0, Lw3/b/a/f0/k;->R:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/b/a/f0/k;

    if-nez v1, :cond_2

    .line 3
    new-instance v1, Lw3/b/a/f0/k;

    const/4 v2, 0x4

    const/4 v11, 0x0

    .line 4
    invoke-static {p0, v11, v2}, Lw3/b/a/f0/m;->a0(Lw3/b/a/g;Lw3/b/a/z;I)Lw3/b/a/f0/m;

    move-result-object v2

    .line 5
    invoke-direct {v1, v2, v11}, Lw3/b/a/f0/k;-><init>(Lw3/b/a/a;Ljava/lang/Object;)V

    .line 6
    new-instance v12, Lw3/b/a/b;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v12

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Lw3/b/a/b;-><init>(IIIIIIILw3/b/a/a;)V

    .line 7
    new-instance v2, Lw3/b/a/f0/k;

    invoke-static {v1, v12, v11}, Lw3/b/a/f0/w;->b0(Lw3/b/a/a;Lw3/b/a/x;Lw3/b/a/x;)Lw3/b/a/f0/w;

    move-result-object v1

    const-string v3, ""

    invoke-direct {v2, v1, v3}, Lw3/b/a/f0/k;-><init>(Lw3/b/a/a;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lw3/b/a/f0/k;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lw3/b/a/f0/k;->S:Lw3/b/a/f0/k;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lw3/b/a/a;->s()Lw3/b/a/g;

    move-result-object v0

    invoke-static {v0}, Lw3/b/a/f0/k;->Y(Lw3/b/a/g;)Lw3/b/a/f0/k;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public Q()Lw3/b/a/a;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/f0/k;->S:Lw3/b/a/f0/k;

    return-object v0
.end method

.method public R(Lw3/b/a/g;)Lw3/b/a/a;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    invoke-static {p1}, Lw3/b/a/f0/k;->Y(Lw3/b/a/g;)Lw3/b/a/f0/k;

    move-result-object p1

    return-object p1
.end method

.method public W(Lw3/b/a/f0/a$a;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lw3/b/a/k;->b:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    iput-object v0, p1, Lw3/b/a/f0/a$a;->l:Lw3/b/a/j;

    .line 3
    iget-object v0, p1, Lw3/b/a/f0/a$a;->E:Lw3/b/a/c;

    .line 4
    new-instance v1, Lw3/b/a/h0/j;

    new-instance v2, Lw3/b/a/h0/q;

    invoke-direct {v2, p0, v0}, Lw3/b/a/h0/q;-><init>(Lw3/b/a/a;Lw3/b/a/c;)V

    const/16 v0, 0x21f

    invoke-direct {v1, v2, v0}, Lw3/b/a/h0/j;-><init>(Lw3/b/a/c;I)V

    iput-object v1, p1, Lw3/b/a/f0/a$a;->E:Lw3/b/a/c;

    .line 5
    new-instance v2, Lw3/b/a/h0/f;

    iget-object v3, p1, Lw3/b/a/f0/a$a;->l:Lw3/b/a/j;

    sget-object v4, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v4, Lw3/b/a/d;->c:Lw3/b/a/d;

    invoke-direct {v2, v1, v3, v4}, Lw3/b/a/h0/f;-><init>(Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/d;)V

    iput-object v2, p1, Lw3/b/a/f0/a$a;->F:Lw3/b/a/c;

    .line 6
    iget-object v1, p1, Lw3/b/a/f0/a$a;->B:Lw3/b/a/c;

    .line 7
    new-instance v2, Lw3/b/a/h0/j;

    new-instance v3, Lw3/b/a/h0/q;

    invoke-direct {v3, p0, v1}, Lw3/b/a/h0/q;-><init>(Lw3/b/a/a;Lw3/b/a/c;)V

    invoke-direct {v2, v3, v0}, Lw3/b/a/h0/j;-><init>(Lw3/b/a/c;I)V

    iput-object v2, p1, Lw3/b/a/f0/a$a;->B:Lw3/b/a/c;

    .line 8
    new-instance v0, Lw3/b/a/h0/j;

    iget-object v1, p1, Lw3/b/a/f0/a$a;->F:Lw3/b/a/c;

    const/16 v2, 0x63

    invoke-direct {v0, v1, v2}, Lw3/b/a/h0/j;-><init>(Lw3/b/a/c;I)V

    .line 9
    new-instance v1, Lw3/b/a/h0/g;

    iget-object v2, p1, Lw3/b/a/f0/a$a;->l:Lw3/b/a/j;

    sget-object v3, Lw3/b/a/d;->d:Lw3/b/a/d;

    const/16 v4, 0x64

    invoke-direct {v1, v0, v2, v3, v4}, Lw3/b/a/h0/g;-><init>(Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/d;I)V

    iput-object v1, p1, Lw3/b/a/f0/a$a;->H:Lw3/b/a/c;

    .line 10
    iget-object v0, v1, Lw3/b/a/h0/g;->d:Lw3/b/a/j;

    .line 11
    iput-object v0, p1, Lw3/b/a/f0/a$a;->k:Lw3/b/a/j;

    .line 12
    new-instance v0, Lw3/b/a/h0/n;

    check-cast v1, Lw3/b/a/h0/g;

    .line 13
    iget-object v2, v1, Lw3/b/a/h0/b;->a:Lw3/b/a/d;

    .line 14
    invoke-direct {v0, v1, v2}, Lw3/b/a/h0/n;-><init>(Lw3/b/a/h0/g;Lw3/b/a/d;)V

    .line 15
    new-instance v1, Lw3/b/a/h0/j;

    sget-object v2, Lw3/b/a/d;->e:Lw3/b/a/d;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lw3/b/a/h0/j;-><init>(Lw3/b/a/c;Lw3/b/a/d;I)V

    iput-object v1, p1, Lw3/b/a/f0/a$a;->G:Lw3/b/a/c;

    .line 16
    new-instance v0, Lw3/b/a/h0/n;

    iget-object v1, p1, Lw3/b/a/f0/a$a;->B:Lw3/b/a/c;

    iget-object v2, p1, Lw3/b/a/f0/a$a;->k:Lw3/b/a/j;

    sget-object v5, Lw3/b/a/d;->j:Lw3/b/a/d;

    invoke-direct {v0, v1, v2, v5, v4}, Lw3/b/a/h0/n;-><init>(Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/d;I)V

    .line 17
    new-instance v1, Lw3/b/a/h0/j;

    invoke-direct {v1, v0, v5, v3}, Lw3/b/a/h0/j;-><init>(Lw3/b/a/c;Lw3/b/a/d;I)V

    iput-object v1, p1, Lw3/b/a/f0/a$a;->C:Lw3/b/a/c;

    .line 18
    sget-object v0, Lw3/b/a/f0/k;->Q:Lw3/b/a/c;

    iput-object v0, p1, Lw3/b/a/f0/a$a;->I:Lw3/b/a/c;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lw3/b/a/f0/k;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lw3/b/a/f0/k;

    .line 3
    invoke-virtual {p0}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object v0

    invoke-virtual {p1}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw3/b/a/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lw3/b/a/g;->hashCode()I

    move-result v0

    const v1, 0x1dc28427

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object v0

    const-string v1, "BuddhistChronology"

    if-eqz v0, :cond_0

    const/16 v2, 0x5b

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->D(Ljava/lang/String;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v0, v0, Lw3/b/a/g;->a:Ljava/lang/String;

    const/16 v2, 0x5d

    .line 4
    invoke-static {v1, v0, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method
