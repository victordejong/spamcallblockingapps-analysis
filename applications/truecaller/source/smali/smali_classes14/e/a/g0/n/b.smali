.class public final Le/a/g0/n/b;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/g0/n/a;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "sharedPrefs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/a/g0/n/b;->b:I

    const-string p1, "s"

    .line 3
    iput-object p1, p0, Le/a/g0/n/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInt(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/g0/n/b;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g0/n/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
