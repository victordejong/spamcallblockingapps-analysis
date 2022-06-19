.class public Le/a/g5/m$c;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/g5/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/g5/n;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/data/entity/Contact;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Le/a/r2/e;Lcom/truecaller/data/entity/Contact;JJIILe/a/g5/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/g5/m$c;->b:Lcom/truecaller/data/entity/Contact;

    .line 3
    iput-wide p3, p0, Le/a/g5/m$c;->c:J

    .line 4
    iput-wide p5, p0, Le/a/g5/m$c;->d:J

    .line 5
    iput p7, p0, Le/a/g5/m$c;->e:I

    .line 6
    iput p8, p0, Le/a/g5/m$c;->f:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 8

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/g5/n;

    .line 2
    iget-object v1, p0, Le/a/g5/m$c;->b:Lcom/truecaller/data/entity/Contact;

    iget-wide v2, p0, Le/a/g5/m$c;->c:J

    iget-wide v4, p0, Le/a/g5/m$c;->d:J

    iget v6, p0, Le/a/g5/m$c;->e:I

    iget v7, p0, Le/a/g5/m$c;->f:I

    invoke-interface/range {v0 .. v7}, Le/a/g5/n;->b(Lcom/truecaller/data/entity/Contact;JJII)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".tagContact("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/g5/m$c;->b:Lcom/truecaller/data/entity/Contact;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Le/a/g5/m$c;->c:J

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v2, p0, Le/a/g5/m$c;->d:J

    invoke-static {v2, v3, v4, v0, v1}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Le/a/g5/m$c;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v4}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/g5/m$c;->f:I

    const-string v2, ")"

    invoke-static {v1, v4, v0, v2}, Le/d/c/a/a;->K1(IILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
