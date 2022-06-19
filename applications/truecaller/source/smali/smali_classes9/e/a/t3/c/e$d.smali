.class public final Le/a/t3/c/e$d;
.super Le/a/t3/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t3/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/featuretoggles/FeatureKey;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(JLcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1

    const-string v0, "key"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteKey"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Le/a/t3/c/e;-><init>(JLs1/z/c/f;)V

    iput-object p3, p0, Le/a/t3/c/e$d;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    iput-object p4, p0, Le/a/t3/c/e$d;->b:Ljava/lang/String;

    iput-object p5, p0, Le/a/t3/c/e$d;->c:Ljava/lang/String;

    iput-boolean p6, p0, Le/a/t3/c/e$d;->d:Z

    iput-boolean p7, p0, Le/a/t3/c/e$d;->e:Z

    iput-boolean p8, p0, Le/a/t3/c/e$d;->f:Z

    return-void
.end method
