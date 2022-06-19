.class public final Le/m/d/n/j/l/l$b;
.super Le/m/d/n/j/l/a0$e$d$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/n/j/l/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Le/m/d/n/j/l/a0$e$d$a$b;

.field public b:Le/m/d/n/j/l/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/n/j/l/b0<",
            "Le/m/d/n/j/l/a0$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/m/d/n/j/l/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/n/j/l/b0<",
            "Le/m/d/n/j/l/a0$c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/d/n/j/l/a0$e$d$a$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Le/m/d/n/j/l/a0$e$d$a;Le/m/d/n/j/l/l$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Le/m/d/n/j/l/a0$e$d$a$a;-><init>()V

    .line 3
    check-cast p1, Le/m/d/n/j/l/l;

    .line 4
    iget-object p2, p1, Le/m/d/n/j/l/l;->a:Le/m/d/n/j/l/a0$e$d$a$b;

    .line 5
    iput-object p2, p0, Le/m/d/n/j/l/l$b;->a:Le/m/d/n/j/l/a0$e$d$a$b;

    .line 6
    iget-object p2, p1, Le/m/d/n/j/l/l;->b:Le/m/d/n/j/l/b0;

    .line 7
    iput-object p2, p0, Le/m/d/n/j/l/l$b;->b:Le/m/d/n/j/l/b0;

    .line 8
    iget-object p2, p1, Le/m/d/n/j/l/l;->c:Le/m/d/n/j/l/b0;

    .line 9
    iput-object p2, p0, Le/m/d/n/j/l/l$b;->c:Le/m/d/n/j/l/b0;

    .line 10
    iget-object p2, p1, Le/m/d/n/j/l/l;->d:Ljava/lang/Boolean;

    .line 11
    iput-object p2, p0, Le/m/d/n/j/l/l$b;->d:Ljava/lang/Boolean;

    .line 12
    iget p1, p1, Le/m/d/n/j/l/l;->e:I

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Le/m/d/n/j/l/l$b;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Le/m/d/n/j/l/a0$e$d$a;
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/d/n/j/l/l$b;->a:Le/m/d/n/j/l/a0$e$d$a$b;

    if-nez v0, :cond_0

    const-string v0, " execution"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Le/m/d/n/j/l/l$b;->e:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const-string v1, " uiOrientation"

    .line 3
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Le/m/d/n/j/l/l;

    iget-object v3, p0, Le/m/d/n/j/l/l$b;->a:Le/m/d/n/j/l/a0$e$d$a$b;

    iget-object v4, p0, Le/m/d/n/j/l/l$b;->b:Le/m/d/n/j/l/b0;

    iget-object v5, p0, Le/m/d/n/j/l/l$b;->c:Le/m/d/n/j/l/b0;

    iget-object v6, p0, Le/m/d/n/j/l/l$b;->d:Ljava/lang/Boolean;

    iget-object v1, p0, Le/m/d/n/j/l/l$b;->e:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Le/m/d/n/j/l/l;-><init>(Le/m/d/n/j/l/a0$e$d$a$b;Le/m/d/n/j/l/b0;Le/m/d/n/j/l/b0;Ljava/lang/Boolean;ILe/m/d/n/j/l/l$a;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
