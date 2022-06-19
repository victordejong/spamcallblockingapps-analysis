.class public final Le/a/v2/u$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v2/u;->a(Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Le/a/v2/w/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v2/u;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/truecaller/attestation/AttestationEngine;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Le/a/v2/u;Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Le/a/v2/u$c;->b:Le/a/v2/u;

    iput-object p2, p0, Le/a/v2/u$c;->c:Ljava/lang/String;

    iput-object p3, p0, Le/a/v2/u$c;->d:Lcom/truecaller/attestation/AttestationEngine;

    iput-object p4, p0, Le/a/v2/u$c;->e:Ljava/lang/String;

    iput-wide p5, p0, Le/a/v2/u$c;->f:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 2
    :try_start_0
    iget-object p1, p0, Le/a/v2/u$c;->b:Le/a/v2/u;

    .line 3
    iget-object v0, p1, Le/a/v2/u;->c:Le/a/v2/w/g;

    .line 4
    iget-object v1, p0, Le/a/v2/u$c;->c:Ljava/lang/String;

    iget-object v2, p0, Le/a/v2/u$c;->d:Lcom/truecaller/attestation/AttestationEngine;

    iget-object v3, p0, Le/a/v2/u$c;->e:Ljava/lang/String;

    iget-wide v4, p0, Le/a/v2/u$c;->f:J

    invoke-virtual/range {v0 .. v5}, Le/a/v2/w/g;->a(Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;J)Le/a/v2/w/h;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
