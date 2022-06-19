.class public Le/k/a/c/g0/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Le/k/a/c/g0/a0;


# instance fields
.field public final a:Le/k/a/c/v;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Le/k/a/a/k0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Le/k/a/a/n0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Le/k/a/c/g0/a0;

    sget-object v1, Le/k/a/c/v;->e:Le/k/a/c/v;

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/k/a/c/g0/a0;-><init>(Le/k/a/c/v;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V

    sput-object v6, Le/k/a/c/g0/a0;->f:Le/k/a/c/g0/a0;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/v;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/v;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Le/k/a/a/k0<",
            "*>;>;Z",
            "Ljava/lang/Class<",
            "+",
            "Le/k/a/a/n0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/a0;->a:Le/k/a/c/v;

    .line 3
    iput-object p2, p0, Le/k/a/c/g0/a0;->d:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Le/k/a/c/g0/a0;->b:Ljava/lang/Class;

    .line 5
    iput-boolean p4, p0, Le/k/a/c/g0/a0;->e:Z

    if-nez p5, :cond_0

    .line 6
    const-class p5, Le/k/a/a/q0;

    .line 7
    :cond_0
    iput-object p5, p0, Le/k/a/c/g0/a0;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ObjectIdInfo: propName="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/c/g0/a0;->a:Le/k/a/c/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/g0/a0;->d:Ljava/lang/Class;

    .line 2
    invoke-static {v1}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", generatorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/g0/a0;->b:Ljava/lang/Class;

    .line 3
    invoke-static {v1}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alwaysAsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/k/a/c/g0/a0;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
