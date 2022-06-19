.class public final Le/m/a/c/l1/y;
.super Le/m/a/c/y0;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/m/a/c/l1/y;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/c/y0;-><init>()V

    .line 2
    iput-wide p1, p0, Le/m/a/c/l1/y;->b:J

    .line 3
    iput-wide p1, p0, Le/m/a/c/l1/y;->c:J

    .line 4
    iput-boolean p3, p0, Le/m/a/c/l1/y;->d:Z

    .line 5
    iput-boolean p5, p0, Le/m/a/c/l1/y;->e:Z

    .line 6
    iput-object p7, p0, Le/m/a/c/l1/y;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Le/m/a/c/l1/y;->g:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public g(ILe/m/a/c/y0$b;Z)Le/m/a/c/y0$b;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Ln3/g0/y;->w(III)I

    if-eqz p3, :cond_0

    .line 2
    sget-object p1, Le/m/a/c/l1/y;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-wide v1, p0, Le/m/a/c/l1/y;->b:J

    const-wide/16 v3, 0x0

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p3, Le/m/a/c/l1/a0/a;->e:Le/m/a/c/l1/a0/a;

    .line 6
    iput-object p1, p2, Le/m/a/c/y0$b;->a:Ljava/lang/Object;

    .line 7
    iput v0, p2, Le/m/a/c/y0$b;->b:I

    .line 8
    iput-wide v1, p2, Le/m/a/c/y0$b;->c:J

    .line 9
    iput-wide v3, p2, Le/m/a/c/y0$b;->d:J

    .line 10
    iput-object p3, p2, Le/m/a/c/y0$b;->e:Le/m/a/c/l1/a0/a;

    return-object p2
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Ln3/g0/y;->w(III)I

    .line 2
    sget-object p1, Le/m/a/c/l1/y;->g:Ljava/lang/Object;

    return-object p1
.end method

.method public n(ILe/m/a/c/y0$c;J)Le/m/a/c/y0$c;
    .locals 5

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 1
    invoke-static {p1, p3, p4}, Ln3/g0/y;->w(III)I

    .line 2
    sget-object p1, Le/m/a/c/y0$c;->l:Ljava/lang/Object;

    iget-object p4, p0, Le/m/a/c/l1/y;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iget-boolean v1, p0, Le/m/a/c/l1/y;->d:Z

    iget-boolean v2, p0, Le/m/a/c/l1/y;->e:Z

    iget-wide v3, p0, Le/m/a/c/l1/y;->c:J

    .line 3
    iput-object p1, p2, Le/m/a/c/y0$c;->a:Ljava/lang/Object;

    .line 4
    iput-object p4, p2, Le/m/a/c/y0$c;->b:Ljava/lang/Object;

    .line 5
    iput-object v0, p2, Le/m/a/c/y0$c;->c:Ljava/lang/Object;

    .line 6
    iput-boolean v1, p2, Le/m/a/c/y0$c;->d:Z

    .line 7
    iput-boolean p3, p2, Le/m/a/c/y0$c;->e:Z

    .line 8
    iput-boolean v2, p2, Le/m/a/c/y0$c;->f:Z

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p2, Le/m/a/c/y0$c;->i:J

    .line 10
    iput-wide v3, p2, Le/m/a/c/y0$c;->j:J

    .line 11
    iput p3, p2, Le/m/a/c/y0$c;->g:I

    .line 12
    iput p3, p2, Le/m/a/c/y0$c;->h:I

    .line 13
    iput-wide v0, p2, Le/m/a/c/y0$c;->k:J

    return-object p2
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
