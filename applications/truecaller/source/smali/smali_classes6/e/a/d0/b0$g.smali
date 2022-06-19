.class public Le/a/d0/b0$g;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d0/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/d0/c0;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:J

.field public final g:Lcom/truecaller/blocking/FilterMatch;


# direct methods
.method public constructor <init>(Le/a/r2/e;ILjava/lang/String;IIJLcom/truecaller/blocking/FilterMatch;Le/a/d0/b0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput p2, p0, Le/a/d0/b0$g;->b:I

    .line 3
    iput-object p3, p0, Le/a/d0/b0$g;->c:Ljava/lang/String;

    .line 4
    iput p4, p0, Le/a/d0/b0$g;->d:I

    .line 5
    iput p5, p0, Le/a/d0/b0$g;->e:I

    .line 6
    iput-wide p6, p0, Le/a/d0/b0$g;->f:J

    .line 7
    iput-object p8, p0, Le/a/d0/b0$g;->g:Lcom/truecaller/blocking/FilterMatch;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 8

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/d0/c0;

    .line 2
    iget v1, p0, Le/a/d0/b0$g;->b:I

    iget-object v2, p0, Le/a/d0/b0$g;->c:Ljava/lang/String;

    iget v3, p0, Le/a/d0/b0$g;->d:I

    iget v4, p0, Le/a/d0/b0$g;->e:I

    iget-wide v5, p0, Le/a/d0/b0$g;->f:J

    iget-object v7, p0, Le/a/d0/b0$g;->g:Lcom/truecaller/blocking/FilterMatch;

    invoke-interface/range {v0 .. v7}, Le/a/d0/c0;->c(ILjava/lang/String;IIJLcom/truecaller/blocking/FilterMatch;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".onStateChanged("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/d0/b0$g;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/d0/b0$g;->c:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4, v0, v1}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v3, p0, Le/a/d0/b0$g;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Le/a/d0/b0$g;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Le/a/d0/b0$g;->f:J

    invoke-static {v3, v4, v2, v0, v1}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/d0/b0$g;->g:Lcom/truecaller/blocking/FilterMatch;

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
