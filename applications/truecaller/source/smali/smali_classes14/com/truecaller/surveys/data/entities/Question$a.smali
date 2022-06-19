.class public final Lcom/truecaller/surveys/data/entities/Question$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/surveys/data/entities/Question;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lq3/b/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/b/b<",
            "Lcom/truecaller/surveys/data/entities/Question;",
            ">;"
        }
    .end annotation

    new-instance v0, Lq3/b/e;

    const-class v1, Lcom/truecaller/surveys/data/entities/Question;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ls1/a/c;

    const-class v4, Lcom/truecaller/surveys/data/entities/Question$Binary;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/truecaller/surveys/data/entities/Question$FreeText;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lcom/truecaller/surveys/data/entities/Question$Rating;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-array v2, v2, [Lq3/b/b;

    sget-object v4, Lcom/truecaller/surveys/data/entities/Question$Binary$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary$a;

    aput-object v4, v2, v5

    sget-object v4, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;->a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;

    aput-object v4, v2, v6

    sget-object v4, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText$a;

    aput-object v4, v2, v7

    sget-object v4, Lcom/truecaller/surveys/data/entities/Question$Rating$a;->a:Lcom/truecaller/surveys/data/entities/Question$Rating$a;

    aput-object v4, v2, v8

    const-string v4, "com.truecaller.surveys.data.entities.Question"

    invoke-direct {v0, v4, v1, v3, v2}, Lq3/b/e;-><init>(Ljava/lang/String;Ls1/a/c;[Ls1/a/c;[Lq3/b/b;)V

    return-object v0
.end method
