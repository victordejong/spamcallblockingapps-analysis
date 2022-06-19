.class public final Le/a/t3/c/e$c;
.super Le/a/t3/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t3/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/featuretoggles/FeatureKey;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseString"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseFlavor"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Le/a/t3/c/e;-><init>(JLs1/z/c/f;)V

    iput-object p3, p0, Le/a/t3/c/e$c;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    iput-object p4, p0, Le/a/t3/c/e$c;->b:Ljava/lang/String;

    iput-object p5, p0, Le/a/t3/c/e$c;->c:Ljava/lang/String;

    iput-object p6, p0, Le/a/t3/c/e$c;->d:Ljava/lang/String;

    return-void
.end method
