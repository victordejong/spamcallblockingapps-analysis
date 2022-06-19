.class public final Lg/g/a/a/i/o/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/a/i/o/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/o/v$a;
    }
.end annotation


# static fields
.field public static final CTN:Ljava/lang/String; = "ctn"

.field public static final Companion:Lg/g/a/a/i/o/v$a;

.field public static final REFRESH_TOKEN:Ljava/lang/String; = "refreshToken"


# instance fields
.field private ctn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "ctn"
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "refreshToken"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/g/a/a/i/o/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/o/v$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lg/g/a/a/i/o/v;->Companion:Lg/g/a/a/i/o/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/o/v;->refreshToken:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lg/g/a/a/i/o/v;->ctn:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lg/g/a/a/i/o/v;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCtn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/v;->ctn:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/v;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/v;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setCtn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/v;->ctn:Ljava/lang/String;

    return-void
.end method

.method public final setRefreshToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/v;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/v;->type:Ljava/lang/String;

    return-void
.end method
