.class public final Le/m/b/x/b/v;
.super Le/m/b/x/b/b;
.source "SourceFile"


# instance fields
.field public c:J

.field public d:Z

.field public final e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Le/m/b/x/b/b;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Le/m/b/x/b/v;->c:J

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Le/m/b/x/b/v;->e:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/b/x/b/v;->c:J

    return-wide v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/b/x/b/v;->d:Z

    return v0
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/b/v;->e:Ljava/io/InputStream;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Le/m/b/x/b/b;
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/x/b/b;->a:Ljava/lang/String;

    return-object p0
.end method
