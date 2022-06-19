.class public Le/a/h0/q$g;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/h0/r;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/h0/w/a;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Le/a/r2/e;Le/a/h0/w/a;Ljava/lang/String;ZLe/a/h0/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/h0/q$g;->b:Le/a/h0/w/a;

    .line 3
    iput-object p3, p0, Le/a/h0/q$g;->c:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, Le/a/h0/q$g;->d:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/h0/r;

    .line 2
    iget-object v0, p0, Le/a/h0/q$g;->b:Le/a/h0/w/a;

    iget-object v1, p0, Le/a/h0/q$g;->c:Ljava/lang/String;

    iget-boolean v2, p0, Le/a/h0/q$g;->d:Z

    invoke-interface {p1, v0, v1, v2}, Le/a/h0/r;->c(Le/a/h0/w/a;Ljava/lang/String;Z)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".whitelistFilter("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/h0/q$g;->b:Le/a/h0/w/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/h0/q$g;->c:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v1}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean v1, p0, Le/a/h0/q$g;->d:Z

    const-string v2, ")"

    invoke-static {v1, v3, v0, v2}, Le/d/c/a/a;->u(ZILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
