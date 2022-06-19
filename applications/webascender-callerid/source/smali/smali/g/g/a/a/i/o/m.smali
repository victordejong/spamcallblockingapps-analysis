.class public final Lg/g/a/a/i/o/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/a/i/o/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/o/m$a;
    }
.end annotation


# static fields
.field public static final Companion:Lg/g/a/a/i/o/m$a;

.field public static final HIYA_SELECT_INFO:Ljava/lang/String; = "hiyaSelectInfo"


# instance fields
.field private hiyaSelectInfoDTO:Lg/g/a/a/i/o/n;
    .annotation runtime Lcom/google/gson/v/c;
        value = "hiyaSelectInfo"
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

    new-instance v0, Lg/g/a/a/i/o/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/o/m$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lg/g/a/a/i/o/m;->Companion:Lg/g/a/a/i/o/m$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/o/m;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getHiyaSelectInfoDTO()Lg/g/a/a/i/o/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/m;->hiyaSelectInfoDTO:Lg/g/a/a/i/o/n;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/m;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setHiyaSelectInfoDTO(Lg/g/a/a/i/o/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/m;->hiyaSelectInfoDTO:Lg/g/a/a/i/o/n;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/m;->type:Ljava/lang/String;

    return-void
.end method
